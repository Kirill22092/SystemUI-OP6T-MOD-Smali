.class public Lcom/android/systemui/assist/DeviceConfigHelper;
.super Ljava/lang/Object;
.source "DeviceConfigHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getBoolean$3(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1

    const-string/jumbo v0, "systemui"

    .line 59
    invoke-static {v0, p0, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getInt$1(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 1

    const-string/jumbo v0, "systemui"

    .line 48
    invoke-static {v0, p0, p1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getLong$0(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 1

    const-string/jumbo v0, "systemui"

    .line 43
    invoke-static {v0, p0, p1, p2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getString$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "systemui"

    .line 54
    invoke-static {v0, p0, p1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 0

    const-string/jumbo p0, "systemui"

    .line 64
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 58
    new-instance p0, Lcom/android/systemui/assist/-$$Lambda$DeviceConfigHelper$HWniMUF9Jobip6r9UKC-XeuOiT4;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/-$$Lambda$DeviceConfigHelper$HWniMUF9Jobip6r9UKC-XeuOiT4;-><init>(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 47
    new-instance p0, Lcom/android/systemui/assist/-$$Lambda$DeviceConfigHelper$-Ng8xYHPOvZ_2ultguhmGQJUI2A;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/-$$Lambda$DeviceConfigHelper$-Ng8xYHPOvZ_2ultguhmGQJUI2A;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 42
    new-instance p0, Lcom/android/systemui/assist/-$$Lambda$DeviceConfigHelper$3aQUQDpT19LyipkVjVVewd3Du-U;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/assist/-$$Lambda$DeviceConfigHelper$3aQUQDpT19LyipkVjVVewd3Du-U;-><init>(Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    new-instance p0, Lcom/android/systemui/assist/-$$Lambda$DeviceConfigHelper$3D4OB5zAUMlCtZQpKS6FfDrXEDI;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/-$$Lambda$DeviceConfigHelper$3D4OB5zAUMlCtZQpKS6FfDrXEDI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
