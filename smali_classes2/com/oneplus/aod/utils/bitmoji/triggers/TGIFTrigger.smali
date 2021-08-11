.class public final Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;
.source "TGIFTrigger.kt"


# instance fields
.field private final mCallback:Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;

.field private mInTGIF:Z


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

    new-instance p1, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;)V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;->mCallback:Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;

    return-void
.end method

.method public static final synthetic access$getHandler(Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;)Landroid/os/Handler;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMBitmojiManager$p(Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;)Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    return-object p0
.end method

.method public static final synthetic access$getMInTGIF$p(Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;->mInTGIF:Z

    return p0
.end method

.method public static final synthetic access$inTGIFTime(Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;->inTGIFTime()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setMInTGIF$p(Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;->mInTGIF:Z

    return-void
.end method

.method private final inTGIFTime()Z
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/16 v0, 0x12

    if-lt p0, v0, :cond_0

    const/16 v0, 0x18

    if-ge p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method protected getCategories()[Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "tgif"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentCategory()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "tgif"

    return-object p0
.end method

.method public getMdmLabel()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "tgif"

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public init()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;->mCallback:Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public isActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;->mInTGIF:Z

    return p0
.end method
