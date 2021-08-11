.class public Lcom/oneplus/aod/utils/OpAodXmlParser;
.super Ljava/lang/Object;
.source "OpAodXmlParser.java"


# static fields
.field private static final CONTROLLER_MAPPING_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/oneplus/aod/utils/OpAodXmlParser;->CONTROLLER_MAPPING_CACHE:Landroid/util/SparseArray;

    return-void
.end method

.method public static getControllerName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/oneplus/aod/utils/OpAodXmlParser;->CONTROLLER_MAPPING_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object p0, Lcom/oneplus/aod/utils/OpAodXmlParser;->CONTROLLER_MAPPING_CACHE:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "controller"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/oneplus/aod/utils/OpAodXmlParser;->CONTROLLER_MAPPING_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    return-object v1

    :cond_4
    if-eqz p0, :cond_5

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p0, v0

    :goto_1
    :try_start_2
    const-string v1, "OpAodXmlParser"

    const-string v2, "getControllerName occur exception"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_5

    :goto_2
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, p0

    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw p1
.end method

.method static varargs parseSystemInfoArea(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;[Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V
    .locals 6

    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_8

    :cond_1
    if-eq v1, v3, :cond_0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "systemInfoContainer"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2, p0, p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;->parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_3
    const-string v5, "dateInfo"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x0

    aget-object v1, p3, v1

    check-cast v1, Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;->parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_4
    const-string v5, "sliceInfo"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    aget-object v1, p3, v2

    check-cast v1, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_5
    const-string v2, "batteryInfo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x2

    aget-object v1, p3, v1

    check-cast v1, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_6
    const-string v2, "notificationInfo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    aget-object v1, p3, v3

    check-cast v1, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_7
    const-string v2, "ownerInfo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p3, v4

    check-cast v1, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OpAodXmlParser"

    const-string p2, "parseSystemInfoArea occur error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    return-void
.end method
