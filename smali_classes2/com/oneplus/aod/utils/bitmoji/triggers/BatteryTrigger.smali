.class public final Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;
.source "BatteryTrigger.kt"


# static fields
.field private static final BATTERY_LEVEL_MAX:I = 0xf

.field private static final BATTERY_LEVEL_MIN:I


# instance fields
.field private final mBatteryCallback:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:I

.field private mCharging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmojiManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->mBatteryLevel:I

    new-instance p1, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;)V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->mBatteryCallback:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;

    const-class p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-void
.end method

.method public static final synthetic access$batteryLevelInRange(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->batteryLevelInRange(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getHandler(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;)Landroid/os/Handler;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMBatteryLevel$p(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->mBatteryLevel:I

    return p0
.end method

.method public static final synthetic access$getMBitmojiManager$p(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;)Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    return-object p0
.end method

.method public static final synthetic access$getMCharging$p(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->mCharging:Z

    return p0
.end method

.method public static final synthetic access$setMBatteryLevel$p(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->mBatteryLevel:I

    return-void
.end method

.method public static final synthetic access$setMCharging$p(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->mCharging:Z

    return-void
.end method

.method private final batteryLevelInRange(I)Z
    .locals 1

    sget p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->BATTERY_LEVEL_MIN:I

    sget v0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->BATTERY_LEVEL_MAX:I

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-lt v0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method protected getCategories()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "battery_low"

    const-string v0, "charging"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentCategory()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->mCharging:Z

    if-eqz v0, :cond_0

    const-string p0, "charging"

    return-object p0

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->batteryLevelInRange(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "battery_low"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMdmLabel()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->getCurrentCategory()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x55996271

    if-eq v0, v1, :cond_2

    const v1, 0x789eb222

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "battery_low"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_2
    const-string v0, "charging"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "battery_charging"

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public init()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->init()V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->mBatteryCallback:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->mCharging:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->batteryLevelInRange(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
