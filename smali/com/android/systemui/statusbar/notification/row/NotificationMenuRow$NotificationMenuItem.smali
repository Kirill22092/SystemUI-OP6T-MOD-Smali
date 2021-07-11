.class public Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationMenuItem"
.end annotation


# instance fields
.field mContentDescription:Ljava/lang/String;

.field mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

.field mMenuView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V
    .locals 3

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 810
    sget v1, Lcom/android/systemui/R$dimen;->notification_menu_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 811
    sget v2, Lcom/android/systemui/R$color;->notification_gear_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-ltz p4, :cond_0

    .line 813
    new-instance v2, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;-><init>(Landroid/content/Context;)V

    .line 814
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 815
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 816
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 817
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 818
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 819
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mMenuView:Landroid/view/View;

    .line 821
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mContentDescription:Ljava/lang/String;

    .line 822
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 0

    .line 838
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getGutsView()Landroid/view/View;
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 0

    .line 828
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mMenuView:Landroid/view/View;

    return-object p0
.end method
