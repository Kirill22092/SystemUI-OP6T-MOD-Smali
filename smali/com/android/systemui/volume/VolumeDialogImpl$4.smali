.class Lcom/android/systemui/volume/VolumeDialogImpl$4;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field final synthetic val$row:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 0

    .line 1474
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->val$row:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1477
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1478
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->val$row:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->viewTouchDownY:F

    goto :goto_1

    .line 1479
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 1480
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->val$row:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->viewTouchUpY:F

    .line 1481
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->val$row:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->viewTouchUpY:F

    iget p1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->viewTouchDownY:F

    sub-float/2addr v1, p1

    const/4 p1, 0x0

    cmpg-float p1, v1, p1

    if-gez p1, :cond_3

    .line 1482
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1483
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eq v2, v1, :cond_3

    .line 1486
    const-class p1, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController;

    invoke-interface {p1, v2, v0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController;->isNeedToShowGuideUi(IZ)I

    .line 1490
    :cond_3
    :goto_1
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_4

    .line 1491
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sliderFrameLayout, onTouch, event.getActionMasked():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", row.viewTouchDownY:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->val$row:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget p2, p2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->viewTouchDownY:F

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", row.viewTouchUpY:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->val$row:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->viewTouchUpY:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1491
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method
