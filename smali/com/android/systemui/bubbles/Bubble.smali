.class Lcom/android/systemui/bubbles/Bubble;
.super Ljava/lang/Object;
.source "Bubble.java"

# interfaces
.implements Lcom/android/systemui/bubbles/BubbleViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppUid:I

.field private mBadgedAppIcon:Landroid/graphics/drawable/Drawable;

.field private mBadgedImage:Landroid/graphics/Bitmap;

.field private mChannelId:Ljava/lang/String;

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mDesiredHeight:I

.field private mDesiredHeightResId:I

.field private mDotColor:I

.field private mDotPath:Landroid/graphics/Path;

.field private mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

.field private mFlags:I

.field private mFlyoutMessage:Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIconView:Lcom/android/systemui/bubbles/BadgedImageView;

.field private mInflateSynchronously:Z

.field private mInflationTask:Lcom/android/systemui/bubbles/BubbleViewInfoTask;

.field private mInstanceId:Lcom/android/internal/logging/InstanceId;

.field private mIntent:Landroid/app/PendingIntent;

.field private mIntentActive:Z

.field private mIntentCancelListener:Landroid/app/PendingIntent$CancelListener;

.field private mIsBubble:Z

.field private mIsClearable:Z

.field private mIsImportantConversation:Z

.field private mIsVisuallyInterruptive:Z

.field private final mKey:Ljava/lang/String;

.field private mLastAccessed:J

.field private mLastUpdated:J

.field private mMetadataShortcutId:Ljava/lang/String;

.field private mNotificationId:I

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntentCanceled:Z

.field private mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private mShouldSuppressNotificationDot:Z

.field private mShouldSuppressNotificationList:Z

.field private mShouldSuppressPeek:Z

.field private mShowBubbleUpdateDot:Z

.field private mSuppressFlyout:Z

.field private mSuppressionListener:Lcom/android/systemui/bubbles/BubbleController$NotificationSuppressionChangedListener;

.field private mTitle:Ljava/lang/String;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/bubbles/BubbleController$NotificationSuppressionChangedListener;Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcom/android/systemui/bubbles/Bubble;->mAppUid:I

    .line 175
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lcom/android/systemui/bubbles/Bubble;->mSuppressionListener:Lcom/android/systemui/bubbles/BubbleController$NotificationSuppressionChangedListener;

    .line 178
    new-instance p2, Lcom/android/systemui/bubbles/-$$Lambda$Bubble$Ycd3LZAa6VyWLbOckhAm9_pvjnE;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/bubbles/-$$Lambda$Bubble$Ycd3LZAa6VyWLbOckhAm9_pvjnE;-><init>(Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;)V

    iput-object p2, p0, Lcom/android/systemui/bubbles/Bubble;->mIntentCancelListener:Landroid/app/PendingIntent$CancelListener;

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/Bubble;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;IILjava/lang/String;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcom/android/systemui/bubbles/Bubble;->mAppUid:I

    .line 156
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lcom/android/systemui/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 160
    iput-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 161
    iput p1, p0, Lcom/android/systemui/bubbles/Bubble;->mFlags:I

    .line 162
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 163
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 164
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    .line 165
    iput p3, p0, Lcom/android/systemui/bubbles/Bubble;->mDesiredHeight:I

    .line 166
    iput p4, p0, Lcom/android/systemui/bubbles/Bubble;->mDesiredHeightResId:I

    .line 167
    iput-object p5, p0, Lcom/android/systemui/bubbles/Bubble;->mTitle:Ljava/lang/String;

    .line 168
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    return-void
.end method

.method private getDimenForPackageUser(Landroid/content/Context;ILjava/lang/String;I)I
    .locals 1

    .line 628
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    move p4, p1

    .line 635
    :cond_0
    :try_start_0
    invoke-virtual {p0, p3, p4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p0

    .line 636
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p2, "Bubble"

    const-string p3, "Couldn\'t find desired height res id"

    .line 641
    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_1
    return p1
.end method

.method private static getTitle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;
    .locals 1

    .line 733
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 735
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getUid(Landroid/content/Context;)I
    .locals 2

    .line 615
    iget v0, p0, Lcom/android/systemui/bubbles/Bubble;->mAppUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 616
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 619
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 620
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Bubble"

    const-string v0, "cannot find uid"

    .line 622
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private isBubbleLoading()Z
    .locals 1

    .line 318
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mInflationTask:Lcom/android/systemui/bubbles/BubbleViewInfoTask;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p0

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0(Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;Landroid/app/PendingIntent;)V
    .locals 1

    .line 179
    iget-object p2, p0, Lcom/android/systemui/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIntentCancelListener:Landroid/app/PendingIntent$CancelListener;

    invoke-virtual {p2, v0}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 182
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;->onPendingIntentCanceled(Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method private shouldSuppressNotification()Z
    .locals 1

    const/4 v0, 0x2

    .line 648
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/Bubble;->isEnabled(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method cleanupViews()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->cleanUpExpandedState()V

    .line 262
    iput-object v1, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    .line 264
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/bubbles/Bubble;->mIconView:Lcom/android/systemui/bubbles/BadgedImageView;

    .line 265
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/systemui/bubbles/Bubble;->mIntentCancelListener:Landroid/app/PendingIntent$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIntentActive:Z

    return-void
.end method

.method public disable(I)V
    .locals 1

    .line 676
    iget v0, p0, Lcom/android/systemui/bubbles/Bubble;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/bubbles/Bubble;->mFlags:I

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "key: "

    .line 693
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  showInShade:   "

    .line 694
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->showInShade()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  showDot:       "

    .line 695
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->showDot()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  showFlyout:    "

    .line 696
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->showFlyout()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  desiredHeight: "

    .line 697
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getDesiredHeightString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  suppressNotif: "

    .line 698
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/Bubble;->shouldSuppressNotification()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  autoExpand:    "

    .line 699
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->shouldAutoExpand()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public enable(I)V
    .locals 1

    .line 672
    iget v0, p0, Lcom/android/systemui/bubbles/Bubble;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/bubbles/Bubble;->mFlags:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 705
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/bubbles/Bubble;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 706
    :cond_1
    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    .line 707
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getAppUid()I
    .locals 0

    .line 611
    iget p0, p0, Lcom/android/systemui/bubbles/Bubble;->mAppUid:I

    return p0
.end method

.method public getBadgedAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mBadgedAppIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getBadgedImage()Landroid/graphics/Bitmap;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mBadgedImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method getBubbleIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method getDeleteIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method getDesiredHeight(Landroid/content/Context;)F
    .locals 3

    .line 569
    iget v0, p0, Lcom/android/systemui/bubbles/Bubble;->mDesiredHeightResId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 571
    iget v0, p0, Lcom/android/systemui/bubbles/Bubble;->mDesiredHeightResId:I

    iget-object v1, p0, Lcom/android/systemui/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 572
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 571
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/bubbles/Bubble;->getDimenForPackageUser(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 574
    :cond_1
    iget p0, p0, Lcom/android/systemui/bubbles/Bubble;->mDesiredHeight:I

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, p1

    return p0
.end method

.method getDesiredHeightString()Ljava/lang/String;
    .locals 1

    .line 579
    iget v0, p0, Lcom/android/systemui/bubbles/Bubble;->mDesiredHeightResId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 581
    iget p0, p0, Lcom/android/systemui/bubbles/Bubble;->mDesiredHeightResId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 583
    :cond_1
    iget p0, p0, Lcom/android/systemui/bubbles/Bubble;->mDesiredHeight:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getVirtualDisplayId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getDotColor()I
    .locals 0

    .line 212
    iget p0, p0, Lcom/android/systemui/bubbles/Bubble;->mDotColor:I

    return p0
.end method

.method public getDotPath()Landroid/graphics/Path;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mDotPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    return-object p0
.end method

.method getFlyoutMessage()Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mFlyoutMessage:Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;

    return-object p0
.end method

.method getIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public bridge synthetic getIconView()Landroid/view/View;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object p0

    return-object p0
.end method

.method public getIconView()Lcom/android/systemui/bubbles/BadgedImageView;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mIconView:Lcom/android/systemui/bubbles/BadgedImageView;

    return-object p0
.end method

.method public getInstanceId()Lcom/android/internal/logging/InstanceId;
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method getLastActivity()J
    .locals 4

    .line 435
    iget-wide v0, p0, Lcom/android/systemui/bubbles/Bubble;->mLastUpdated:J

    iget-wide v2, p0, Lcom/android/systemui/bubbles/Bubble;->mLastAccessed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getMetadataShortcutId()Ljava/lang/String;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method getPendingIntentCanceled()Z
    .locals 0

    .line 276
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/Bubble;->mPendingIntentCanceled:Z

    return p0
.end method

.method getRawDesiredHeight()I
    .locals 0

    .line 561
    iget p0, p0, Lcom/android/systemui/bubbles/Bubble;->mDesiredHeight:I

    return p0
.end method

.method getRawDesiredHeightResId()I
    .locals 0

    .line 565
    iget p0, p0, Lcom/android/systemui/bubbles/Bubble;->mDesiredHeightResId:I

    return p0
.end method

.method getSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 598
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/Bubble;->getUid(Landroid/content/Context;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const-string p1, "app_uid"

    .line 602
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/high16 p0, 0x8000000

    .line 604
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 605
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x20000000

    .line 606
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method hasMetadataShortcutId()Z
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 712
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method inflate(Lcom/android/systemui/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleIconFactory;Z)V
    .locals 9

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/bubbles/Bubble;->isBubbleLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mInflationTask:Lcom/android/systemui/bubbles/BubbleViewInfoTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 304
    :cond_0
    new-instance v0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/bubbles/BubbleViewInfoTask;-><init>(Lcom/android/systemui/bubbles/Bubble;Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleIconFactory;ZLcom/android/systemui/bubbles/BubbleViewInfoTask$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mInflationTask:Lcom/android/systemui/bubbles/BubbleViewInfoTask;

    .line 310
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/Bubble;->mInflateSynchronously:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    new-array p0, p1, [Ljava/lang/Void;

    .line 311
    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->onPostExecute(Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V

    goto :goto_0

    :cond_1
    new-array p0, p1, [Ljava/lang/Void;

    .line 313
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public isBubble()Z
    .locals 0

    .line 668
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/Bubble;->mIsBubble:Z

    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 680
    iget p0, p0, Lcom/android/systemui/bubbles/Bubble;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isImportantConversation()Z
    .locals 0

    .line 498
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/Bubble;->mIsImportantConversation:Z

    return p0
.end method

.method isInflated()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIconView:Lcom/android/systemui/bubbles/BadgedImageView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isIntentActive()Z
    .locals 0

    .line 447
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/Bubble;->mIntentActive:Z

    return p0
.end method

.method isVisuallyInterruptive()Z
    .locals 0

    .line 428
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/Bubble;->mIsVisuallyInterruptive:Z

    return p0
.end method

.method public synthetic lambda$new$0$Bubble(Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/Bubble;->lambda$new$0(Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public logUIEvent(IIFFI)V
    .locals 12

    move-object v0, p0

    .line 717
    iget-object v1, v0, Lcom/android/systemui/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/systemui/bubbles/Bubble;->mChannelId:Ljava/lang/String;

    iget v3, v0, Lcom/android/systemui/bubbles/Bubble;->mNotificationId:I

    .line 726
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->showInShade()Z

    move-result v9

    const/16 v0, 0x95

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v4, p5

    move v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    .line 717
    invoke-static/range {v0 .. v11}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(ILjava/lang/String;Ljava/lang/String;IIIIFFZZZ)V

    return-void
.end method

.method markAsAccessedAt(J)V
    .locals 0

    .line 475
    iput-wide p1, p0, Lcom/android/systemui/bubbles/Bubble;->mLastAccessed:J

    const/4 p1, 0x1

    .line 476
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/Bubble;->setSuppressNotification(Z)V

    const/4 p1, 0x0

    .line 477
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/Bubble;->setShowDot(Z)V

    return-void
.end method

.method public setContentVisibility(Z)V
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_0

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    :cond_0
    return-void
.end method

.method setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 375
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/bubbles/Bubble;->mLastUpdated:J

    .line 378
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIsBubble:Z

    .line 379
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 380
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 381
    invoke-static {p1}, Lcom/android/systemui/bubbles/Bubble;->getTitle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mTitle:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIsClearable:Z

    .line 383
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressNotificationDot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mShouldSuppressNotificationDot:Z

    .line 384
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressNotificationList()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mShouldSuppressNotificationList:Z

    .line 385
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressPeek()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mShouldSuppressPeek:Z

    .line 386
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mChannelId:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/Bubble;->mNotificationId:I

    .line 388
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/Bubble;->mAppUid:I

    .line 389
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 390
    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->extractFlyoutMessage(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mFlyoutMessage:Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;

    .line 391
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 392
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->visuallyInterruptive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIsVisuallyInterruptive:Z

    .line 397
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 398
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/Bubble;->mFlags:I

    .line 399
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/Bubble;->mDesiredHeight:I

    .line 400
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/Bubble;->mDesiredHeightResId:I

    .line 401
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    .line 403
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIntentActive:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_6

    .line 411
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_6

    .line 413
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/bubbles/Bubble;->mIntentCancelListener:Landroid/app/PendingIntent$CancelListener;

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 414
    iput-object v1, p0, Lcom/android/systemui/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    goto :goto_3

    .line 404
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    .line 405
    iget-object v1, p0, Lcom/android/systemui/bubbles/Bubble;->mIntentCancelListener:Landroid/app/PendingIntent$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 407
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    .line 409
    iget-object v1, p0, Lcom/android/systemui/bubbles/Bubble;->mIntentCancelListener:Landroid/app/PendingIntent$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 416
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 419
    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/Bubble;->mIsImportantConversation:Z

    return-void
.end method

.method setInflateSynchronously(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 285
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/Bubble;->mInflateSynchronously:Z

    return-void
.end method

.method setIntentActive()V
    .locals 1

    const/4 v0, 0x1

    .line 443
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIntentActive:Z

    return-void
.end method

.method public setIsBubble(Z)V
    .locals 0

    .line 664
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/Bubble;->mIsBubble:Z

    return-void
.end method

.method setPendingIntentCanceled()V
    .locals 1

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mPendingIntentCanceled:Z

    return-void
.end method

.method setShouldAutoExpand(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 657
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/Bubble;->enable(I)V

    goto :goto_0

    .line 659
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/Bubble;->disable(I)V

    :goto_0
    return-void
.end method

.method setShowDot(Z)V
    .locals 0

    .line 521
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    .line 523
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mIconView:Lcom/android/systemui/bubbles/BadgedImageView;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 524
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    :cond_0
    return-void
.end method

.method setSuppressFlyout(Z)V
    .locals 0

    .line 553
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/Bubble;->mSuppressFlyout:Z

    return-void
.end method

.method setSuppressNotification(Z)V
    .locals 1

    .line 505
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->showInShade()Z

    move-result v0

    if-eqz p1, :cond_0

    .line 507
    iget p1, p0, Lcom/android/systemui/bubbles/Bubble;->mFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/systemui/bubbles/Bubble;->mFlags:I

    goto :goto_0

    .line 509
    :cond_0
    iget p1, p0, Lcom/android/systemui/bubbles/Bubble;->mFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/systemui/bubbles/Bubble;->mFlags:I

    .line 512
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->showInShade()Z

    move-result p1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mSuppressionListener:Lcom/android/systemui/bubbles/BubbleController$NotificationSuppressionChangedListener;

    if-eqz p1, :cond_1

    .line 513
    invoke-interface {p1, p0}, Lcom/android/systemui/bubbles/BubbleController$NotificationSuppressionChangedListener;->onBubbleNotificationSuppressionChange(Lcom/android/systemui/bubbles/Bubble;)V

    :cond_1
    return-void
.end method

.method setViewInfo(Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V
    .locals 1

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->isInflated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->imageView:Lcom/android/systemui/bubbles/BadgedImageView;

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIconView:Lcom/android/systemui/bubbles/BadgedImageView;

    .line 336
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->expandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    .line 339
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 340
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mAppName:Ljava/lang/String;

    .line 341
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->flyoutMessage:Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mFlyoutMessage:Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;

    .line 343
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->badgedAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mBadgedAppIcon:Landroid/graphics/drawable/Drawable;

    .line 344
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->badgedBubbleImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mBadgedImage:Landroid/graphics/Bitmap;

    .line 345
    iget v0, p1, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotColor:I

    iput v0, p0, Lcom/android/systemui/bubbles/Bubble;->mDotColor:I

    .line 346
    iget-object p1, p1, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotPath:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mDotPath:Landroid/graphics/Path;

    .line 348
    iget-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    if-eqz p1, :cond_1

    .line 349
    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->update(Lcom/android/systemui/bubbles/Bubble;)V

    .line 351
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mIconView:Lcom/android/systemui/bubbles/BadgedImageView;

    if-eqz p1, :cond_2

    .line 352
    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/BadgedImageView;->setRenderedBubble(Lcom/android/systemui/bubbles/BubbleViewProvider;)V

    :cond_2
    return-void
.end method

.method public shouldAutoExpand()Z
    .locals 1

    const/4 v0, 0x1

    .line 652
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/Bubble;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public showDot()Z
    .locals 1

    .line 533
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mShouldSuppressNotificationDot:Z

    if-nez v0, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/android/systemui/bubbles/Bubble;->shouldSuppressNotification()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method showFlyout()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mSuppressFlyout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mShouldSuppressPeek:Z

    if-nez v0, :cond_0

    .line 543
    invoke-direct {p0}, Lcom/android/systemui/bubbles/Bubble;->shouldSuppressNotification()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/Bubble;->mShouldSuppressNotificationList:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method showInShade()Z
    .locals 1

    .line 491
    invoke-direct {p0}, Lcom/android/systemui/bubbles/Bubble;->shouldSuppressNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/Bubble;->mIsClearable:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method stopInflation()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mInflationTask:Lcom/android/systemui/bubbles/BubbleViewInfoTask;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 329
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->cleanupViews()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bubble{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
