.class public Lcom/oneplus/signal/OpSignalIcons;
.super Ljava/lang/Object;
.source "OpSignalIcons.java"


# static fields
.field public static final FOUR_G_LTE:I

.field public static final FOUR_G_PLUS_LTE:I

.field public static final HD:I

.field public static final HD_ICONS:[I

.field public static final HD_UNAVAILABLE:I

.field public static final VOLTE:I

.field public static final VOLTE_ICONS:[I

.field public static final VOWIFI:I

.field public static final VOWIFI_ICONS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_volte:I

    sput v0, Lcom/oneplus/signal/OpSignalIcons;->VOLTE:I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 24
    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_volte_slot1:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_volte_slot2:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_volte_slot12:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sput-object v1, Lcom/oneplus/signal/OpSignalIcons;->VOLTE_ICONS:[I

    .line 29
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_vowifi:I

    sput v1, Lcom/oneplus/signal/OpSignalIcons;->VOWIFI:I

    new-array v1, v0, [I

    .line 30
    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_vowifi_slot1:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_vowifi_slot2:I

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_vowifi_slot12:I

    aput v2, v1, v5

    sput-object v1, Lcom/oneplus/signal/OpSignalIcons;->VOWIFI_ICONS:[I

    .line 35
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_hd:I

    sput v1, Lcom/oneplus/signal/OpSignalIcons;->HD:I

    new-array v0, v0, [I

    .line 36
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_hd_slot1:I

    aput v1, v0, v3

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_hd_slot2:I

    aput v1, v0, v4

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_hd_slot12:I

    aput v1, v0, v5

    sput-object v0, Lcom/oneplus/signal/OpSignalIcons;->HD_ICONS:[I

    .line 41
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_hd_unavailable:I

    sput v0, Lcom/oneplus/signal/OpSignalIcons;->HD_UNAVAILABLE:I

    .line 43
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4g_lte:I

    sput v0, Lcom/oneplus/signal/OpSignalIcons;->FOUR_G_LTE:I

    .line 44
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4g_plus_lte:I

    sput v0, Lcom/oneplus/signal/OpSignalIcons;->FOUR_G_PLUS_LTE:I

    return-void
.end method

.method public static getDisableDataIcon(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 122
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_disabled:I

    goto :goto_0

    .line 118
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->op_stat_sys_data_disconnected_5g_uwb:I

    goto :goto_0

    .line 115
    :cond_1
    sget p0, Lcom/android/systemui/R$drawable;->op_stat_sys_data_disconnected_5g:I

    goto :goto_0

    .line 111
    :cond_2
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_disconnected_4g_lte:I

    goto :goto_0

    .line 108
    :cond_3
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_disconnected_3g:I

    :goto_0
    return p0
.end method

.method public static getIdleDataIcon(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 77
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->op_stat_sys_data_idle_5g_uwb:I

    goto :goto_0

    .line 82
    :cond_1
    sget p0, Lcom/android/systemui/R$drawable;->op_stat_sys_data_idle_5g:I

    goto :goto_0

    .line 87
    :cond_2
    sget p0, Lcom/android/systemui/R$drawable;->op_stat_sys_data_idle_4g_lte:I

    goto :goto_0

    .line 92
    :cond_3
    sget p0, Lcom/android/systemui/R$drawable;->op_stat_sys_data_idle_3g:I

    :goto_0
    return p0
.end method

.method public static getNetworkClass(J)I
    .locals 4

    const-wide/32 v0, 0x804b

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-wide/32 v0, 0x16bb4

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x61000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    const-wide/32 v0, 0x80000

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x2

    :goto_1
    const-string p1, "debug.network.class"

    .line 67
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
