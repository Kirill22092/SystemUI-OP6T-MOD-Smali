.class public Lcom/oneplus/systemui/util/OpDataUsageUtils;
.super Ljava/lang/Object;
.source "OpDataUsageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpDataUsageUtils"


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private mCarrierText:Ljava/lang/CharSequence;

.field private final mCarrierTextView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDataSim:I

.field private mExpanded:Z

.field private mObserver:Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;

.field private mOriginalCarrierText:Ljava/lang/CharSequence;

.field private mShowUsage:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mExpanded:Z

    .line 66
    iput-object p1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCarrierTextView:Landroid/widget/TextView;

    .line 68
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mUiHandler:Landroid/os/Handler;

    .line 69
    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mBgHandler:Landroid/os/Handler;

    .line 70
    iget-object p1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 71
    new-instance p1, Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;

    iget-object p2, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mBgHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;-><init>(Lcom/oneplus/systemui/util/OpDataUsageUtils;Landroid/os/Handler;Lcom/oneplus/systemui/util/OpDataUsageUtils$1;)V

    iput-object p1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mObserver:Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/util/OpDataUsageUtils;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->refreshUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/util/OpDataUsageUtils;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static findSlotIdBySubId(I)I
    .locals 5

    .line 186
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 188
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    if-eqz v3, :cond_0

    .line 189
    array-length v4, v3

    if-lez v4, :cond_0

    aget v3, v3, v1

    if-ne p0, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static getCurrentTrafficRunningSlotId()I
    .locals 1

    .line 182
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->findSlotIdBySubId(I)I

    move-result v0

    return v0
.end method

.method private getDataUsageString()Ljava/lang/String;
    .locals 8

    .line 155
    invoke-static {}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->getCurrentTrafficRunningSlotId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCurrentDataSim:I

    .line 156
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->isSlotSimInserted(I)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataUsage: sim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCurrentDataSim:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not inserted"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCurrentDataSim:I

    invoke-static {v0, v2}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->getOneplusDataUsage(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 161
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v2, "oneplus_datausage_error_code"

    .line 165
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "getDataUsage: slotId="

    if-eqz v2, :cond_2

    .line 167
    sget-object v0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCurrentDataSim:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", errorCode="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const-string v1, "oneplus_datausage_used"

    .line 170
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 171
    iget-object v2, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v4, 0xa

    invoke-static {v2, v0, v1, v4}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v2

    .line 173
    iget-object v4, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->op_qs_data_usage_used:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCarrierText:Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v2, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v2, v2, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 175
    sget-boolean v4, Lcom/oneplus/systemui/util/OpDataUsageUtils;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 176
    sget-object v4, Lcom/oneplus/systemui/util/OpDataUsageUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCurrentDataSim:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", usage="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", result="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v2

    .line 162
    :cond_4
    :goto_0
    sget-object p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataUsage: data is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_5

    const-string v0, "null"

    goto :goto_1

    :cond_5
    const-string v0, "empty"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static getOneplusDataUsage(Landroid/content/Context;I)Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "oneplus_datausage_warn_value"

    const-string v1, "oneplus_datausage_warn_state"

    const-string v2, "oneplus_datausage_used"

    const-string v3, "oneplus_datausage_total"

    const-string v4, "oneplus_datausage_time_end"

    const-string v5, "oneplus_datausage_time_start"

    const-string v6, "oneplus_datausage_accountday"

    const-string v7, "oneplus_datausage_error_code"

    .line 209
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "oneplus_datausage_slotid"

    move/from16 v10, p1

    .line 210
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v9, 0x0

    .line 212
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "content://com.oneplus.security.database.SafeProvider"

    .line 213
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "method_query_oneplus_datausage"

    .line 212
    invoke-virtual {v10, v11, v12, v9, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 215
    invoke-virtual {v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 216
    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 217
    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 218
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 219
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 220
    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 221
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 222
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    .line 223
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 224
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    .line 235
    sget-object v1, Lcom/oneplus/systemui/util/OpDataUsageUtils;->TAG:Ljava/lang/String;

    const-string v2, "getOneplusDataUsage error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v9
.end method

.method private isSlotSimInserted(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    if-eq v1, p0, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method private synthetic lambda$refreshUI$0(Ljava/lang/String;)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCarrierTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$refreshUI$1()V
    .locals 3

    .line 122
    invoke-direct {p0}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->getDataUsageString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCarrierText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    sget-object v0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "override to usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCarrierText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mOriginalCarrierText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    sget-object v0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "override to default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mOriginalCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mOriginalCarrierText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCarrierTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/systemui/util/-$$Lambda$OpDataUsageUtils$hZyDzNsnrzo6snzxfW_684QJdYE;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/systemui/util/-$$Lambda$OpDataUsageUtils$hZyDzNsnrzo6snzxfW_684QJdYE;-><init>(Lcom/oneplus/systemui/util/OpDataUsageUtils;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$refreshUI$2()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCarrierTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mOriginalCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshUI()V
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mShowUsage:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/systemui/util/-$$Lambda$OpDataUsageUtils$uOJ2urMJPCqOdTJ9ZHr5Kqo-F68;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/util/-$$Lambda$OpDataUsageUtils$uOJ2urMJPCqOdTJ9ZHr5Kqo-F68;-><init>(Lcom/oneplus/systemui/util/OpDataUsageUtils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCarrierTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mOriginalCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/systemui/util/-$$Lambda$OpDataUsageUtils$xFu2vh2aMOGKRmS4bykjBlCqxaU;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/util/-$$Lambda$OpDataUsageUtils$xFu2vh2aMOGKRmS4bykjBlCqxaU;-><init>(Lcom/oneplus/systemui/util/OpDataUsageUtils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$refreshUI$0$OpDataUsageUtils(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->lambda$refreshUI$0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$refreshUI$1$OpDataUsageUtils()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->lambda$refreshUI$1()V

    return-void
.end method

.method public synthetic lambda$refreshUI$2$OpDataUsageUtils()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->lambda$refreshUI$2()V

    return-void
.end method

.method public setCarrierText(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .locals 5

    .line 92
    invoke-static {}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->getCurrentTrafficRunningSlotId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCurrentDataSim:I

    .line 93
    iget-object v1, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mOriginalCarrierText:Ljava/lang/CharSequence;

    .line 94
    iget-object v1, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v3, v1

    if-eqz v3, :cond_2

    if-ltz v0, :cond_2

    iget-boolean v3, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->airplaneMode:Z

    if-eqz v3, :cond_0

    goto :goto_2

    .line 105
    :cond_0
    :try_start_0
    array-length v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 106
    aget-object v0, v1, v2

    iput-object v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 108
    :cond_1
    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCarrierText:Ljava/lang/CharSequence;

    .line 110
    :goto_0
    iput-boolean v4, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mShowUsage:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 112
    sget-object v1, Lcom/oneplus/systemui/util/OpDataUsageUtils;->TAG:Ljava/lang/String;

    const-string v3, "setCarrierText: exception caught."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    iget-object p1, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCarrierText:Ljava/lang/CharSequence;

    .line 114
    iput-boolean v2, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mShowUsage:Z

    .line 116
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->refreshUI()V

    return-void

    .line 97
    :cond_2
    :goto_2
    sget-object v0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slot id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mCurrentDataSim:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", carriersSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v3, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_3
    const-string v3, "null"

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", airplaneMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->airplaneMode:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-boolean v2, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mShowUsage:Z

    .line 101
    invoke-direct {p0}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->refreshUI()V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 87
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mExpanded:Z

    .line 88
    invoke-direct {p0}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->refreshUI()V

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mObserver:Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;

    invoke-virtual {p1}, Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;->startObserving()V

    .line 77
    invoke-direct {p0}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->refreshUI()V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/util/OpDataUsageUtils;->mObserver:Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;

    invoke-virtual {p0}, Lcom/oneplus/systemui/util/OpDataUsageUtils$DataUsageObserver;->stopObserving()V

    :goto_0
    return-void
.end method
