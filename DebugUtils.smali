.class public Lcom/joolarobot/ipong/utils/DebugUtils;
.super Ljava/lang/Object;
.source "SourceFile"
# This file is in JOOLA \smali\com\joolarobot\ipong\utils

# Zuja: My own debug routines

# usage:
# const-string v0, "Message to log"
# invoke-static {v0, p0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/lang/String;)V
# p0 can be any object, and the method will log all its fields and their values.
# invoke-static {v0, v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpStringFields(Ljava/lang/String;Ljava/lang/String;)V
# invoke-static {v0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpString(Ljava/lang/String;)V
# invoke-static {v0, v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpClassName(Ljava/lang/Object;Ljava/lang/String;)V
# invoke-static {v0, v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpInteger(Ljava/lang/String;I)V
# invoke-static {v0, v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpStringURI(Ljava/lang/String;Ljava/net/URI;)V
# invoke-static {v0, v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
# Be careful with dumpObjectFields, as it can log a lot of information, especially for complex objects.
# Als be careful with the variable v0, this depends on .locals and .registers used in the smali code.
# Make sure to adjust the register numbers accordingly when using these methods in different contexts.
# TAG is the tag you can use for the debugging.

.field private static final TAG:Ljava/lang/String;

.method static constructor <clinit>()V
    .registers 1

    const-string v0, "MYDEBUG"

    sput-object v0, Lcom/joolarobot/ipong/utils/DebugUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static dumpDebug(Ljava/lang/String;)V
    .locals 1
    sget-object v0, Lcom/joolarobot/ipong/utils/DebugUtils;->TAG:Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method
.method public static dumpObjectFields(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    # .param p0, "Message"  # Ljava/lang/String;
    # .param p1, "obj"      # Ljava/lang/Object;

    if-nez p1, :cond_1

    const-string v1, "Object is null"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void

    :cond_1
    # Get the Class of the object
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    # Get all declared fields (including private)
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    # Log the number of fields
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=== Dumping fields for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fields) ==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V

    # Walk through each field and log its name and value
    array-length v1, v0

    const/4 v2, 0x0

    :goto_36
    if-lt v2, v1, :cond_76

    # End of field dump
    const-string v1, "=== End of field dump ==="
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V

    return-void

    :cond_76
    aget-object v3, v0, v2

    # Make the field accessible (also private)
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    # Try to get the value of the field for the given object
    :try_start_40
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    # Build log message: field name = value
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Add the value (v4 is the field value)
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V

    :try_end_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_40 .. :try_end_60} :catch_63
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_60} :catch_61

    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :catch_61
    move-exception v3

    goto :goto_64

    :catch_63
    move-exception v3

    :goto_64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V

    goto :goto_61
    return-void 
.end method

.method public static dumpStringFields(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    if-nez p1, :cond_1
    const-string v1, "Object is null"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/String;
    if-eqz v0, :not_a_string
    goto :a_string

    :not_a_string
    const-string v1, "Object is not a String"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    const-string v0, "p0: "
    invoke-static {v0, p0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpClassName(Ljava/lang/String;Ljava/lang/Object;)V
    const-string v0, "p1: "
    invoke-static {v0, p1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpClassName(Ljava/lang/String;Ljava/lang/Object;)V
    return-void

    :a_string
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void 
.end method
.method public static dumpBoolean(Ljava/lang/String;Z)V
    .locals 2
    if-eqz p1, :null_object
    goto :cond_1

    :null_object
    const-string v1, "Object is null"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void
    
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void
.end method
.method public static dumpInteger(Ljava/lang/String;I)V
    .locals 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void
.end method
.method public static dumpStringURL(Ljava/lang/String;Ljava/net/URL;)V
    .locals 3
    if-nez p1, :cond_1
    const-string v1, "Object is null"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void

    :cond_1
    instance-of v0, p1, Ljava/net/URL;
    if-nez v0, :is_URL_p1
    const-string v1, "Object is not a URL"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void

    :is_URL_p1
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;
    move-result-object v2
    instance-of v0, v2, Ljava/lang/String;
    if-eqz v0, :not_a_string
    goto :a_string

    :not_a_string
    const-string v1, "Object is not a String"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    const-string v0, "p0: "
    invoke-static {v0, p0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpClassName(Ljava/lang/String;Ljava/lang/Object;)V
    const-string v0, "p1: "
    invoke-static {v0, v2}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpClassName(Ljava/lang/String;Ljava/lang/Object;)V
    return-void

    :a_string
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void 
.end method
.method public static dumpString(Ljava/lang/String;)V
    .locals 2
    if-nez p0, :cond_8
    const-string v1, "Object is null"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void

    :cond_8
    instance-of v0, p0, Ljava/lang/String;
    if-eqz v0, :not_a_string
    goto :a_string

    :not_a_string
    const-string v1, "Object is not a String"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    const-string v0, "p0: "
    invoke-static {v0, p0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpClassName(Ljava/lang/String;Ljava/lang/Object;)V
    return-void

    :a_string
    invoke-static {p0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void 
.end method

.method public static dumpClassName(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void 
.end method
.method public static dumpMap(Ljava/lang/String; Ljava/util/Map;)V
    .locals 4

    if-nez p1, :cond_0
    const-string v1, " - Map is null"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void

    :cond_0
    # Log map size
    invoke-interface {p1}, Ljava/util/Map;->size()I
    move-result v0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "Map size: "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V

    # Interate through the entries
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object p1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :cond_1
    
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Map$Entry;

    # Get key and value
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v0

    # Build log string
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "Key: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ", Value: "
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0

    invoke-static {v0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    goto :goto_0

    :cond_1
    return-void
.end method
