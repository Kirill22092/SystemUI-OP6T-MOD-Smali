.class public Lcom/oneplus/aod/utils/OpAodSettings;
.super Ljava/lang/Object;
.source "OpAodSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;,
        Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;,
        Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;,
        Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;,
        Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;
    }
.end annotation


# instance fields
.field private mBatteryInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

.field private mBurnInSettings:Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;

.field private mClockInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;

.field private mDateInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;

.field private mNotificationInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

.field private mOwnerInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

.field private mSliceInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

.field private mSupportSeconds:Z

.field private mSystemInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;

.field private mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mSupportSeconds:Z

    .line 51
    new-instance v0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;

    invoke-direct {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mClockInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;

    .line 52
    new-instance v0, Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;

    invoke-direct {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mSystemInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;

    .line 53
    new-instance v0, Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;

    invoke-direct {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mDateInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;

    .line 54
    new-instance v0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    invoke-direct {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mSliceInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    .line 55
    new-instance v0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    invoke-direct {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mBatteryInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    .line 56
    new-instance v0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    invoke-direct {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mNotificationInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    .line 57
    new-instance v0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    invoke-direct {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mOwnerInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    .line 59
    new-instance v0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;

    invoke-direct {v0, p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mBurnInSettings:Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;

    return-void
.end method

.method public static parse(Landroid/content/Context;I)Lcom/oneplus/aod/utils/OpAodSettings;
    .locals 12

    const-string v0, "OpAodSettings"

    const/4 v1, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AodClockStyle"

    .line 78
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 79
    new-instance v2, Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/utils/OpAodSettings;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 82
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-eq v6, v4, :cond_9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 83
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v5, :cond_9

    :cond_2
    if-eq v6, v7, :cond_1

    const/4 v8, 0x4

    if-ne v6, v8, :cond_3

    goto :goto_1

    .line 87
    :cond_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "controller"

    .line 89
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    const-string v9, "burnInSettings"

    .line 91
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 92
    iget-object v6, v2, Lcom/oneplus/aod/utils/OpAodSettings;->mBurnInSettings:Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;

    invoke-virtual {v6, p0, p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_1

    :cond_5
    const-string v9, "supportSeconds"

    .line 93
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 94
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 95
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/oneplus/aod/utils/OpAodSettings;->mSupportSeconds:Z

    goto :goto_1

    :cond_6
    const-string v9, "systemInfoSettings"

    .line 96
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    .line 97
    iget-object v6, v2, Lcom/oneplus/aod/utils/OpAodSettings;->mSystemInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;

    iget-object v11, v2, Lcom/oneplus/aod/utils/OpAodSettings;->mDateInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;

    aput-object v11, v9, v10

    iget-object v10, v2, Lcom/oneplus/aod/utils/OpAodSettings;->mSliceInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    aput-object v10, v9, v4

    iget-object v10, v2, Lcom/oneplus/aod/utils/OpAodSettings;->mBatteryInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    aput-object v10, v9, v3

    iget-object v10, v2, Lcom/oneplus/aod/utils/OpAodSettings;->mNotificationInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    aput-object v10, v9, v7

    iget-object v7, v2, Lcom/oneplus/aod/utils/OpAodSettings;->mOwnerInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    aput-object v7, v9, v8

    invoke-static {p0, p1, v6, v9}, Lcom/oneplus/aod/utils/OpAodXmlParser;->parseSystemInfoArea(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;[Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V

    goto :goto_1

    .line 105
    :cond_7
    iget-object v7, v2, Lcom/oneplus/aod/utils/OpAodSettings;->mClockInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;

    invoke-virtual {v7, p0, p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    :try_start_2
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Class;

    .line 108
    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v10

    const-class v9, Landroid/util/AttributeSet;

    aput-object v9, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 110
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 112
    sget-boolean v9, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_8

    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse: creating view for OpAodSettings: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-array v9, v3, [Ljava/lang/Object;

    aput-object p0, v9, v10

    aput-object v8, v9, v4

    .line 115
    invoke-virtual {v7, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iput-object v7, v2, Lcom/oneplus/aod/utils/OpAodSettings;->mView:Landroid/view/View;

    .line 117
    sget-boolean v7, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_1

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parse: done creating view: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    :catch_0
    move-exception v6

    :try_start_3
    const-string v7, "parse: initial class occur error"

    .line 121
    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 125
    :cond_9
    invoke-direct {v2}, Lcom/oneplus/aod/utils/OpAodSettings;->validate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_a

    .line 134
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_a
    return-object v2

    :cond_b
    :try_start_4
    const-string p0, "parse: xml root name is not correct"

    .line 128
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_c

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object p1, v1

    :goto_2
    :try_start_5
    const-string v2, "parse: parse occur error"

    .line 131
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_c

    .line 134
    :goto_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_c
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, p1

    :goto_4
    if-eqz v1, :cond_d

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 136
    :cond_d
    throw p0
.end method

.method private validate()V
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ERROR !!!! view can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBatteryInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mBatteryInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    return-object p0
.end method

.method public getBound()Landroid/graphics/Rect;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mBurnInSettings:Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->getBound()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getBurnInHandleClassName()Ljava/lang/String;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mBurnInSettings:Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->getHandleClass()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClockInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mClockInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;

    return-object p0
.end method

.method public getDateInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mDateInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;

    return-object p0
.end method

.method public getMovingDistance(Landroid/content/Context;)I
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mBurnInSettings:Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->getMovingDistance(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getNotificationInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mNotificationInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    return-object p0
.end method

.method public getOwnerInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mOwnerInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    return-object p0
.end method

.method public getSliceInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mSliceInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    return-object p0
.end method

.method public getSystemInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mSystemInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mView:Landroid/view/View;

    return-object p0
.end method

.method public isSupportSeconds()Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mSupportSeconds:Z

    return p0
.end method

.method public shouldShowBattery()Z
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mBatteryInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public shouldShowDate()Z
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mDateInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public shouldShowNotification()Z
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mNotificationInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public shouldShowOwnerInfo()Z
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mOwnerInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public shouldShowSliceInfo()Z
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings;->mSliceInfo:Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->isEnabled()Z

    move-result p0

    return p0
.end method
