.class final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;
.super Ljava/lang/Object;
.source "ControlsFavoritingActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->accept(Lcom/android/systemui/controls/controller/ControlsController$LoadData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsFavoritingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsFavoritingActivity.kt\ncom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2\n*L\n1#1,385:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $error:Z

.field final synthetic $structureIndex:I

.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iput p2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->$structureIndex:I

    iput-boolean p3, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->$error:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getStructurePager$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/management/StructureAdapter;

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v2, v2, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v2}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getListOfStructures$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/controls/management/StructureAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getStructurePager$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->$structureIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->$error:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getStatusText$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v4, v4, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->controls_favorite_load_error:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v6, v6, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v6}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getAppName$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, ""

    :goto_0
    aput-object v6, v2, v1

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getSubtitleView$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getListOfStructures$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getStatusText$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v1, v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->controls_favorite_load_none:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getSubtitleView$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getStatusText$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getPageIndicator$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/management/ManagementPageIndicator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v3, v3, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v3}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getListOfStructures$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getPageIndicator$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/management/ManagementPageIndicator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/management/ManagementPageIndicator;->setLocation(F)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getPageIndicator$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/management/ManagementPageIndicator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v3, v3, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v3}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getListOfStructures$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object v1, v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getPageIndicator$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/management/ManagementPageIndicator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getStructurePager$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_2
    return-void
.end method
