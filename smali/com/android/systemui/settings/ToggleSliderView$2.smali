.class Lcom/android/systemui/settings/ToggleSliderView$2;
.super Ljava/lang/Object;
.source "ToggleSliderView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSliderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7

    .line 172
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    .line 174
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSliderView;->access$200(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/ToggleSliderView;->access$400(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    const/4 v6, 0x0

    move v5, p2

    .line 173
    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    .line 177
    :cond_0
    instance-of p0, p1, Lcom/oneplus/systemui/OpSeekBar;

    if-eqz p0, :cond_1

    .line 178
    check-cast p1, Lcom/oneplus/systemui/OpSeekBar;

    invoke-virtual {p1, p2, p3}, Lcom/oneplus/systemui/OpSeekBar;->onProgressChanged(IZ)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    .line 185
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->access$202(Lcom/android/systemui/settings/ToggleSliderView;Z)Z

    .line 187
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSliderView;->access$200(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$400(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    .line 189
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    const/4 v6, 0x0

    .line 188
    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$400(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->showMirror()V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocation(Landroid/view/View;)V

    .line 200
    :cond_1
    instance-of p0, p1, Lcom/oneplus/systemui/OpSeekBar;

    if-eqz p0, :cond_2

    .line 201
    check-cast p1, Lcom/oneplus/systemui/OpSeekBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/OpSeekBar;->onStartTrackingTouch()V

    :cond_2
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    .line 208
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->access$202(Lcom/android/systemui/settings/ToggleSliderView;Z)Z

    .line 210
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSliderView;->access$200(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$400(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    .line 212
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    const/4 v6, 0x1

    .line 211
    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    .line 218
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView$2;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirrorImmediately()V

    .line 223
    :cond_1
    instance-of p0, p1, Lcom/oneplus/systemui/OpSeekBar;

    if-eqz p0, :cond_2

    .line 224
    check-cast p1, Lcom/oneplus/systemui/OpSeekBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/OpSeekBar;->onStopTrackingTouch()V

    :cond_2
    return-void
.end method
