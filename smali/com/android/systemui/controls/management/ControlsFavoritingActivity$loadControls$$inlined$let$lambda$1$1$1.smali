.class public final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ControlsFavoritingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;

    .line 184
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 190
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;

    iget-object p1, p1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object p1, p1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getPageIndicator$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/management/ManagementPageIndicator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;

    iget-object p1, p1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object p1, p1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getMTooltipManager$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/TooltipManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 192
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;

    iget-object v1, v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v1, v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getPageIndicator$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/management/ManagementPageIndicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 193
    aget v1, v0, v1

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;

    iget-object v2, v2, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v2, v2, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v2}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getPageIndicator$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/management/ManagementPageIndicator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    div-int/2addr v2, p1

    add-int/2addr v1, v2

    const/4 p1, 0x1

    .line 194
    aget p1, v0, p1

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getPageIndicator$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/management/ManagementPageIndicator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getMTooltipManager$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/TooltipManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 196
    sget v0, Lcom/android/systemui/R$string;->controls_structure_tooltip:I

    .line 195
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/controls/TooltipManager;->show(III)V

    :cond_0
    return-void
.end method
