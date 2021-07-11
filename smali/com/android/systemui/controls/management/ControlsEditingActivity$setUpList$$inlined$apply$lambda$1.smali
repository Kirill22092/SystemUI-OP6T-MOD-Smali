.class public final Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$$inlined$apply$lambda$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "ControlsEditingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsEditingActivity;->setUpList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $recyclerView$inlined:Landroidx/recyclerview/widget/RecyclerView;

.field private hasAnimated:Z


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$$inlined$apply$lambda$1;->$recyclerView$inlined:Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$$inlined$apply$lambda$1;->hasAnimated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$$inlined$apply$lambda$1;->hasAnimated:Z

    .line 183
    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$$inlined$apply$lambda$1;->$recyclerView$inlined:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
