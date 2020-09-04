.class Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .line 1261
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/oneplus/lib/design/widget/AppBarLayout;I)V
    .locals 8

    .line 1266
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iput p2, p1, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    .line 1268
    iget-object p1, p1, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1270
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 1271
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1272
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1273
    invoke-static {v3}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    move-result-object v5

    .line 1275
    iget v6, v4, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v3, 0x2

    if-eq v6, v3, :cond_1

    goto :goto_2

    :cond_1
    neg-int v3, p2

    int-to-float v3, v3

    .line 1281
    iget v4, v4, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v3, v4

    .line 1282
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1281
    invoke-virtual {v5, v3}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    :cond_2
    neg-int v4, p2

    .line 1277
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    .line 1278
    invoke-virtual {v6, v3}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v3

    invoke-static {v4, v0, v3}, Lcom/oneplus/lib/design/widget/Utils;->constrain(III)I

    move-result v3

    .line 1277
    invoke-virtual {v5, v3}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1288
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1290
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    if-lez p1, :cond_4

    .line 1291
    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1295
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 1297
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    .line 1298
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    .line 1297
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    return-void
.end method
