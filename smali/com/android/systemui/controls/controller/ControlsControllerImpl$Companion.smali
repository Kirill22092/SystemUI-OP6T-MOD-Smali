.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isAvailable(Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;ILandroid/content/ContentResolver;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;->isAvailable(ILandroid/content/ContentResolver;)Z

    move-result p0

    return p0
.end method

.method private final isAvailable(ILandroid/content/ContentResolver;)Z
    .locals 1

    const-string p0, "controls_enabled"

    const/4 v0, 0x1

    invoke-static {p2, p0, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
