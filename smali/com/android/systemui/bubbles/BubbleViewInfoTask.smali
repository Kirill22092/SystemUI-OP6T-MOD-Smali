.class public Lcom/android/systemui/bubbles/BubbleViewInfoTask;
.super Landroid/os/AsyncTask;
.source "BubbleViewInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;,
        Lcom/android/systemui/bubbles/BubbleViewInfoTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mBubble:Lcom/android/systemui/bubbles/Bubble;

.field private mCallback:Lcom/android/systemui/bubbles/BubbleViewInfoTask$Callback;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

.field private mSkipInflation:Z

.field private mStackView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/bubbles/BubbleStackView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/Bubble;Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleIconFactory;ZLcom/android/systemui/bubbles/BubbleViewInfoTask$Callback;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 91
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mContext:Ljava/lang/ref/WeakReference;

    .line 92
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mStackView:Ljava/lang/ref/WeakReference;

    .line 93
    iput-object p4, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    .line 94
    iput-boolean p5, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mSkipInflation:Z

    .line 95
    iput-object p6, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mCallback:Lcom/android/systemui/bubbles/BubbleViewInfoTask$Callback;

    return-void
.end method

.method static extractFlyoutMessage(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;
    .locals 4

    .line 216
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .line 218
    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;

    invoke-direct {v1}, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;-><init>()V

    .line 221
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.isGroupConversation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->isGroupChat:Z

    .line 224
    :try_start_0
    const-class v2, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "android.text"

    if-eqz v2, :cond_1

    .line 227
    :try_start_1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.bigText"

    .line 228
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    return-object v1

    .line 233
    :cond_1
    const-class v2, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 234
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.messages"

    .line 236
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Parcelable;

    .line 235
    invoke-static {p0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object p0

    .line 240
    invoke-static {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 242
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    .line 243
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 244
    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    iput-object v2, v1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    .line 245
    iput-object v0, v1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_3

    .line 246
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_3
    iput-object v0, v1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->senderIcon:Landroid/graphics/drawable/Icon;

    return-object v1

    .line 249
    :cond_4
    const-class v2, Landroid/app/Notification$InboxStyle;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 250
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.textLines"

    .line 251
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 254
    array-length v0, p0

    if-lez v0, :cond_7

    .line 255
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    iput-object p0, v1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    return-object v1

    .line 258
    :cond_5
    const-class v2, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v1

    .line 263
    :cond_6
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 264
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 270
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_7
    return-object v1
.end method

.method static loadSenderAvatar(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 278
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 280
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 281
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 281
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 284
    :cond_2
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;
    .locals 3

    .line 100
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mStackView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mSkipInflation:Z

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->populate(Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleIconFactory;Lcom/android/systemui/bubbles/Bubble;Z)Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/Bubble;->setViewInfo(Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V

    .line 108
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mCallback:Lcom/android/systemui/bubbles/BubbleViewInfoTask$Callback;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mCallback:Lcom/android/systemui/bubbles/BubbleViewInfoTask$Callback;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {p1, p0}, Lcom/android/systemui/bubbles/BubbleViewInfoTask$Callback;->onBubbleViewsReady(Lcom/android/systemui/bubbles/Bubble;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->onPostExecute(Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V

    return-void
.end method
