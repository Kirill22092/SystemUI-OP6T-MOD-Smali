.class public Lcom/android/systemui/bubbles/BubbleOverflowActivity;
.super Landroid/app/Activity;
.source "BubbleOverflowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleOverflowActivity$NoScrollGridLayoutManager;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/bubbles/BubbleOverflowAdapter;

.field private mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private mEmptyState:Landroid/widget/LinearLayout;

.field private mEmptyStateImage:Landroid/widget/ImageView;

.field private mEmptyStateSubtitle:Landroid/widget/TextView;

.field private mEmptyStateTitle:Landroid/widget/TextView;

.field private mOverflowBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mOverflowBubbles:Ljava/util/List;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleOverflowActivity;)Lcom/android/systemui/bubbles/BubbleController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    return-object p0
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleController;->getOverflowBubbles()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->onDataChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$BubbleOverflowActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->lambda$onCreate$0()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/android/systemui/R$layout;->bubble_overflow_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sget p1, Lcom/android/systemui/R$id;->bubble_overflow_recycler:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget p1, Lcom/android/systemui/R$id;->bubble_overflow_empty_state:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mEmptyState:Landroid/widget/LinearLayout;

    sget p1, Lcom/android/systemui/R$id;->bubble_overflow_empty_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mEmptyStateTitle:Landroid/widget/TextView;

    sget p1, Lcom/android/systemui/R$id;->bubble_overflow_empty_subtitle:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mEmptyStateSubtitle:Landroid/widget/TextView;

    sget p1, Lcom/android/systemui/R$id;->bubble_overflow_empty_state_image:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mEmptyStateImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->updateDimensions()V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleController;->getOverflowBubbles()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->onDataChanged(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleOverflowActivity$bBXw1pgL9xyN0c4JMlrR5U428HM;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleOverflowActivity$bBXw1pgL9xyN0c4JMlrR5U428HM;-><init>(Lcom/android/systemui/bubbles/BubbleOverflowActivity;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/BubbleController;->setOverflowCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method onDataChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mAdapter:Lcom/android/systemui/bubbles/BubbleOverflowAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mEmptyState:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mEmptyState:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->updateDimensions()V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->updateTheme()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method updateDimensions()V
    .locals 9

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->bubbles_overflow_columns:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/android/systemui/bubbles/BubbleOverflowActivity$NoScrollGridLayoutManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcom/android/systemui/bubbles/BubbleOverflowActivity$NoScrollGridLayoutManager;-><init>(Lcom/android/systemui/bubbles/BubbleOverflowActivity;Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget v3, Lcom/android/systemui/R$dimen;->bubble_overflow_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int v7, v2, v1

    sget v2, Lcom/android/systemui/R$integer;->bubbles_max_overflow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sget v2, Lcom/android/systemui/R$dimen;->bubble_overflow_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/android/systemui/R$dimen;->bubble_overflow_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v2, v0

    div-int v8, v2, v1

    new-instance v0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mOverflowBubbles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/systemui/bubbles/-$$Lambda$HcbZA8v8RHJPrNTsZB0H54PCimo;

    invoke-direct {v6, v1}, Lcom/android/systemui/bubbles/-$$Lambda$HcbZA8v8RHJPrNTsZB0H54PCimo;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;II)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mAdapter:Lcom/android/systemui/bubbles/BubbleOverflowAdapter;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method updateTheme()V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x20

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mEmptyStateImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    sget v5, Lcom/android/systemui/R$drawable;->ic_empty_bubble_overflow_dark:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    :cond_1
    sget v5, Lcom/android/systemui/R$drawable;->ic_empty_bubble_overflow_light:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x1020002

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v1, :cond_2

    sget v5, Lcom/android/systemui/R$color;->bubbles_dark:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_2
    sget v5, Lcom/android/systemui/R$color;->bubbles_light:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v4, -0x1000000

    const/4 v5, -0x1

    if-eqz v1, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    if-eqz v1, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mEmptyStateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->mEmptyStateSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x10104e2
        0x1010038
    .end array-data
.end method
