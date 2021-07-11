.class Lcom/android/systemui/volume/VolumeDialogImpl$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->opExpandAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field final synthetic val$animBeginWidth:I

.field final synthetic val$animEndWidth:I

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/ViewGroup$LayoutParams;ILandroid/view/ViewGroup;I)V
    .locals 0

    .line 1729
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->val$animBeginWidth:I

    iput-object p4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->val$container:Landroid/view/ViewGroup;

    iput p5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->val$animEndWidth:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1745
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAnimVol onAnimationEnd, isRunning:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->val$animEndWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1749
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->val$container:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1750
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->val$container:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1751
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1752
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V

    .line 1754
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v0, -0x2

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 1756
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$1702(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 1759
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$1900(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    .line 1762
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAnimVol onAnimationEnd 2 mIsExpandAnimDone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",  width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1732
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "opExpandAnim onAnimationStart"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$1002(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 1734
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->val$animBeginWidth:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1735
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->val$container:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1736
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->val$container:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1738
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1739
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$1200(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V

    :cond_1
    return-void
.end method
