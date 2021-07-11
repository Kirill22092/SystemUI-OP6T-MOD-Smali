.class Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;
.super Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;
.source "RtlViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReversingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/RtlViewPager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/RtlViewPager;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    .line 261
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;-><init>(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$400(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 277
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$400(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 269
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    .line 282
    invoke-super {p0, p1}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$400(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result p0

    sub-int/2addr p0, p1

    add-int/lit8 p1, p0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :cond_2
    :goto_1
    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$400(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 301
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getPageWidth(I)F
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$400(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 309
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getPageWidth(I)F

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$400(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 325
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$400(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 317
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$400(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 333
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$400(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 341
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
