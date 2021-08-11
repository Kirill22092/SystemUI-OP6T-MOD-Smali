.class public final Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$$inlined$apply$lambda$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "ControlsProviderSelectorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private hasAnimated:Z

.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$$inlined$apply$lambda$1;->hasAnimated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$$inlined$apply$lambda$1;->hasAnimated:Z

    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->access$getRecyclerView$p(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
