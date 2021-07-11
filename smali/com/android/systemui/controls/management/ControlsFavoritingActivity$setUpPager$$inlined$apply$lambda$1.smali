.class public final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$$inlined$apply$lambda$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ControlsFavoritingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->setUpPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 213
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 0

    .line 227
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 228
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getPageIndicator$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/management/ManagementPageIndicator;

    move-result-object p0

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/ManagementPageIndicator;->setLocation(F)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 215
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getListOfStructures$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/management/StructureContainer;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/StructureContainer;->getStructureName()Ljava/lang/CharSequence;

    move-result-object p1

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getAppName$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getTitleView$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getTitleView$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    return-void
.end method
