.class public Lcom/android/systemui/statusbar/RemoteInputController;
.super Ljava/lang/Object;
.source "RemoteInputController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/RemoteInputController$Delegate;,
        Lcom/android/systemui/statusbar/RemoteInputController$Callback;
    }
.end annotation


# static fields
.field private static final ENABLE_REMOTE_INPUT:Z


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/RemoteInputController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelegate:Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

.field private final mOpen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRemoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

.field private final mSpinning:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.enable_remote_input"

    const/4 v1, 0x1

    .line 43
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/RemoteInputController;->ENABLE_REMOTE_INPUT:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/RemoteInputController$Delegate;Lcom/android/systemui/statusbar/policy/RemoteInputUriController;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mDelegate:Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    .line 55
    iput-object p2, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mRemoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mDelegate:Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/RemoteInputController$Delegate;->setRemoteInputActive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result p1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/RemoteInputController$Callback;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/RemoteInputController$Callback;->onRemoteInputActive(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static processForRemoteInput(Landroid/app/Notification;Landroid/content/Context;)V
    .locals 10

    .line 65
    sget-boolean v0, Lcom/android/systemui/statusbar/RemoteInputController;->ENABLE_REMOTE_INPUT:Z

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_8

    :cond_1
    const/4 v0, 0x0

    .line 72
    new-instance v1, Landroid/app/Notification$WearableExtender;

    invoke-direct {v1, p0}, Landroid/app/Notification$WearableExtender;-><init>(Landroid/app/Notification;)V

    .line 74
    invoke-virtual {v1}, Landroid/app/Notification$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    .line 78
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$Action;

    if-nez v5, :cond_2

    goto :goto_3

    .line 82
    :cond_2
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_3

    .line 86
    :cond_3
    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    .line 87
    invoke-virtual {v9}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v0, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 98
    invoke-static {p1, p0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/app/Notification$Action;

    aput-object v0, p1, v3

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 100
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    :cond_8
    return-void
.end method

.method private pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)Z
    .locals 7

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_6

    .line 221
    iget-object v4, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 222
    iget-object v5, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p3, :cond_1

    if-ne v5, p3, :cond_0

    goto :goto_1

    :cond_0
    move v6, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v6, v1

    :goto_2
    if-eqz v4, :cond_4

    if-ne v4, p2, :cond_2

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    if-ne v4, p1, :cond_5

    if-eqz p3, :cond_3

    if-eq p3, v5, :cond_3

    .line 230
    iget-object v4, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    move v3, v1

    goto :goto_4

    .line 226
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    return v3
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V
    .locals 0

    .line 241
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)V
    .locals 3

    .line 112
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->apply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public addSpinning(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public closeRemoteInputs()V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    iget-object v1, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 260
    iget-object v2, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v2, :cond_1

    .line 261
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_4

    .line 267
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 268
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->closeRemoteInput()V

    :cond_3
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public grantInlineReplyUriPermission(Landroid/service/notification/StatusBarNotification;Landroid/net/Uri;)V
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mRemoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/RemoteInputUriController;->grantInlineReplyUriPermission(Landroid/service/notification/StatusBarNotification;Landroid/net/Uri;)V

    return-void
.end method

.method public isRemoteInputActive()Z
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, v0, v0, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)Z

    .line 206
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isRemoteInputActive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSpinning(Ljava/lang/String;)Z
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSpinning(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lockScrollTo(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mDelegate:Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController$Delegate;->lockScrollTo(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public remoteInputSent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/RemoteInputController$Callback;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/RemoteInputController$Callback;->onRemoteInputSent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)V
    .locals 1

    .line 133
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)Z

    .line 137
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->apply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public removeSpinning(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 162
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public requestDisallowLongPressAndDismiss()V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mDelegate:Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/RemoteInputController$Delegate;->requestDisallowLongPressAndDismiss()V

    return-void
.end method
