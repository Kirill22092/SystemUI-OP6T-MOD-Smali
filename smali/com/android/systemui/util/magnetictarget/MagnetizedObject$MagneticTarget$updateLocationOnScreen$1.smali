.class final Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;
.super Ljava/lang/Object;
.source "MagnetizedObject.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->updateLocationOnScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;->this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 606
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;->this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-virtual {v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getTargetView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;->this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-static {v1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->access$getTempLoc$p(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 610
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;->this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-virtual {v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getCenterOnScreen()Landroid/graphics/PointF;

    move-result-object v0

    .line 611
    iget-object v1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;->this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-static {v1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->access$getTempLoc$p(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;->this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-virtual {v2}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getTargetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;->this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-virtual {v2}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getTargetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 612
    iget-object v2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;->this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-static {v2}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->access$getTempLoc$p(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)[I

    move-result-object v2

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;->this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-virtual {v4}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getTargetView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;->this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-virtual {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getTargetView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    sub-float/2addr v2, p0

    .line 610
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method
