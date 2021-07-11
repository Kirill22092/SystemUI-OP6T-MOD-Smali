.class public final Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;
.super Ljava/lang/Object;
.source "MagnetizedObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MagneticTarget"
.end annotation


# instance fields
.field private final centerOnScreen:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private magneticFieldRadiusPx:I

.field private final targetView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tempLoc:[I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "targetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    iput p2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->magneticFieldRadiusPx:I

    .line 600
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->centerOnScreen:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 602
    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->tempLoc:[I

    return-void
.end method

.method public static final synthetic access$getTempLoc$p(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)[I
    .locals 0

    .line 596
    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->tempLoc:[I

    return-object p0
.end method


# virtual methods
.method public final getCenterOnScreen()Landroid/graphics/PointF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 600
    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->centerOnScreen:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getMagneticFieldRadiusPx()I
    .locals 0

    .line 598
    iget p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->magneticFieldRadiusPx:I

    return p0
.end method

.method public final getTargetView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 597
    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    return-object p0
.end method

.method public final setMagneticFieldRadiusPx(I)V
    .locals 0

    .line 598
    iput p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->magneticFieldRadiusPx:I

    return-void
.end method

.method public final updateLocationOnScreen()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;-><init>(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
