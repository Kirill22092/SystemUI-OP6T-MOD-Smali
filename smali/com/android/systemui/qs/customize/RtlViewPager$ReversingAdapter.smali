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

    .line 258
    iput-object p1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    .line 259
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;-><init>(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 275
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 267
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    .line 280
    invoke-super {p0, p1}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    .line 281
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 288
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

    .line 296
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 299
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getPageWidth(I)F
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 307
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getPageWidth(I)F

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 323
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 315
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 331
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 339
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
