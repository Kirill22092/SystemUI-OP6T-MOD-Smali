.class public Lcom/android/systemui/toast/ToastUI;
.super Lcom/android/systemui/SystemUI;
.source "ToastUI.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private mCallback:Landroid/app/ITransientNotificationCallback;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mGravity:I

.field private final mNotificationManager:Landroid/app/INotificationManager;

.field private mPresenter:Landroid/widget/ToastPresenter;

.field private final mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 2

    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/toast/ToastUI;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Landroid/app/INotificationManager;Landroid/view/accessibility/IAccessibilityManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Landroid/app/INotificationManager;Landroid/view/accessibility/IAccessibilityManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/toast/ToastUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p3, p0, Lcom/android/systemui/toast/ToastUI;->mNotificationManager:Landroid/app/INotificationManager;

    iput-object p4, p0, Lcom/android/systemui/toast/ToastUI;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00cb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/toast/ToastUI;->mGravity:I

    const p2, 0x1050281

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/toast/ToastUI;->mY:I

    return-void
.end method

.method private hideCurrentToast()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    iget-object v1, p0, Lcom/android/systemui/toast/ToastUI;->mCallback:Landroid/app/ITransientNotificationCallback;

    invoke-virtual {v0, v1}, Landroid/widget/ToastPresenter;->hide(Landroid/app/ITransientNotificationCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    return-void
.end method


# virtual methods
.method public hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ToastPresenter;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    invoke-virtual {v0}, Landroid/widget/ToastPresenter;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/toast/ToastUI;->hideCurrentToast()V

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempt to hide non-current toast from package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ToastUI"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/toast/ToastUI;->hideCurrentToast()V

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-static {v1, v2}, Landroid/widget/ToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/android/systemui/toast/ToastUI;->mCallback:Landroid/app/ITransientNotificationCallback;

    new-instance v2, Landroid/widget/ToastPresenter;

    iget-object v4, v0, Lcom/android/systemui/toast/ToastUI;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    iget-object v5, v0, Lcom/android/systemui/toast/ToastUI;->mNotificationManager:Landroid/app/INotificationManager;

    move-object v6, p2

    invoke-direct {v2, v1, v4, v5, p2}, Landroid/widget/ToastPresenter;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;Landroid/app/INotificationManager;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    iget v7, v0, Lcom/android/systemui/toast/ToastUI;->mGravity:I

    const/4 v8, 0x0

    iget v9, v0, Lcom/android/systemui/toast/ToastUI;->mY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/systemui/toast/ToastUI;->mCallback:Landroid/app/ITransientNotificationCallback;

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v2 .. v12}, Landroid/widget/ToastPresenter;->show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
