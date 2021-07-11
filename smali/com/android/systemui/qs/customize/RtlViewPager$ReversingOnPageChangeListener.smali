.class Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;
.super Ljava/lang/Object;
.source "RtlViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReversingOnPageChangeListener"
.end annotation


# instance fields
.field private final mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/RtlViewPager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/RtlViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p2, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$301(Lcom/android/systemui/qs/customize/RtlViewPager;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$400(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p2

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 232
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v2, p3

    :goto_0
    if-ge p1, p2, :cond_0

    if-lez v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 235
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p3

    mul-float/2addr p3, v0

    float-to-int p3, p3

    sub-int/2addr v2, p3

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    add-int/lit8 p1, p2, -0x1

    neg-int p3, v2

    int-to-float p2, p3

    .line 239
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    mul-float/2addr v0, v1

    div-float/2addr p2, v0

    .line 241
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$501(Lcom/android/systemui/qs/customize/RtlViewPager;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$400(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 250
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    return-void
.end method
