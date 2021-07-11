.class public Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;
.super Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.source "PipAccessibilityInteractionConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;
    }
.end annotation


# instance fields
.field private mAccessibilityNodeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

.field private mContext:Landroid/content/Context;

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private final mExpandedMovementBounds:Landroid/graphics/Rect;

.field private mHandler:Landroid/os/Handler;

.field private mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private final mNormalBounds:Landroid/graphics/Rect;

.field private final mNormalMovementBounds:Landroid/graphics/Rect;

.field private mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

.field private mTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

.field private mTmpBounds:Landroid/graphics/Rect;

.field private mUpdateMovementBoundCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pip/phone/PipMotionHelper;Lcom/android/systemui/pip/PipTaskOrganizer;Lcom/android/systemui/pip/PipSnapAlgorithm;Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mNormalBounds:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mExpandedBounds:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mExpandedMovementBounds:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    .line 69
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mContext:Landroid/content/Context;

    .line 70
    iput-object p7, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 72
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    .line 73
    iput-object p4, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    .line 74
    iput-object p6, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mUpdateMovementBoundCallback:Ljava/lang/Runnable;

    .line 75
    iput-object p5, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

    return-void
.end method

.method private getNodeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->obtainRootAccessibilityNodeInfo(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 266
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$performAccessibilityAction$0()V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;->onAccessibilityShowMenu()V

    return-void
.end method

.method private synthetic lambda$setToExpandedBounds$1(Landroid/graphics/Rect;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 156
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mUpdateMovementBoundCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$setToNormalBounds$2(Landroid/graphics/Rect;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 166
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mUpdateMovementBoundCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static obtainRootAccessibilityNodeInfo(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 245
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 246
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v3, -0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSourceNodeId(JI)V

    .line 248
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 249
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 250
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 251
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 252
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/systemui/R$id;->action_pip_resize:I

    sget v3, Lcom/android/systemui/R$string;->accessibility_action_pip_resize:I

    .line 253
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    const/4 p0, 0x1

    .line 254
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    .line 255
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 256
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    return-object v0
.end method

.method private setToExpandedBounds()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    .line 151
    invoke-virtual {v2}, Lcom/android/systemui/pip/PipTaskOrganizer;->getLastReportedBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mExpandedBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mExpandedBounds:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/systemui/pip/phone/-$$Lambda$PipAccessibilityInteractionConnection$ooTCZxn3Zqg4Jawuz5C0YCDXc2E;

    invoke-direct {v2, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipAccessibilityInteractionConnection$ooTCZxn3Zqg4Jawuz5C0YCDXc2E;-><init>(Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setToNormalBounds()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    .line 162
    invoke-virtual {v2}, Lcom/android/systemui/pip/PipTaskOrganizer;->getLastReportedBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mExpandedMovementBounds:Landroid/graphics/Rect;

    .line 161
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mNormalBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mNormalMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mNormalBounds:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/systemui/pip/phone/-$$Lambda$PipAccessibilityInteractionConnection$79jkZILLclQeuRzkIEwlk9IyS-M;

    invoke-direct {v2, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipAccessibilityInteractionConnection$79jkZILLclQeuRzkIEwlk9IyS-M;-><init>(Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 0

    return-void
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .locals 0

    .line 85
    :try_start_0
    sget-wide p6, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long p1, p1, p6

    if-nez p1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->getNodeList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 84
    :goto_0
    invoke-interface {p5, p0, p4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 0

    const/4 p0, 0x0

    .line 190
    :try_start_0
    invoke-interface {p6, p0, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 0

    const/4 p0, 0x0

    .line 177
    :try_start_0
    invoke-interface {p6, p0, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 0

    const/4 p0, 0x0

    .line 202
    :try_start_0
    invoke-interface {p6, p0, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 0

    const/4 p0, 0x0

    .line 214
    :try_start_0
    invoke-interface {p6, p0, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public synthetic lambda$performAccessibilityAction$0$PipAccessibilityInteractionConnection()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->lambda$performAccessibilityAction$0()V

    return-void
.end method

.method public synthetic lambda$setToExpandedBounds$1$PipAccessibilityInteractionConnection(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->lambda$setToExpandedBounds$1(Landroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic lambda$setToNormalBounds$2$PipAccessibilityInteractionConnection(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->lambda$setToNormalBounds$2(Landroid/graphics/Rect;)V

    return-void
.end method

.method public notifyOutsideTouch()V
    .locals 0

    return-void
.end method

.method onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 236
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 237
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mNormalMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 238
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 0

    .line 99
    sget-wide p7, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long p1, p1, p7

    const/4 p2, 0x1

    if-nez p1, :cond_6

    .line 102
    sget p1, Lcom/android/systemui/R$id;->action_pip_resize:I

    if-ne p3, p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 104
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-ne p1, p3, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->setToExpandedBounds()V

    goto :goto_1

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->setToNormalBounds()V

    goto :goto_1

    :cond_1
    const/16 p1, 0x10

    if-eq p3, p1, :cond_5

    const/high16 p1, 0x40000

    if-eq p3, p1, :cond_4

    const/high16 p1, 0x100000

    if-eq p3, p1, :cond_3

    const p1, 0x1020042

    if-eq p3, p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "ACTION_ARGUMENT_MOVE_WINDOW_X"

    .line 123
    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string p3, "ACTION_ARGUMENT_MOVE_WINDOW_Y"

    .line 125
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 127
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 128
    iget-object p7, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p7}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object p7

    invoke-virtual {p4, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 129
    iget-object p4, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p4, p1, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 130
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 119
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dismissPip()V

    goto :goto_1

    .line 134
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPipToFullscreen()V

    goto :goto_1

    .line 113
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/systemui/pip/phone/-$$Lambda$PipAccessibilityInteractionConnection$yj5JMyeINsNwnRK777qXcVORJV0;

    invoke-direct {p3, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipAccessibilityInteractionConnection$yj5JMyeINsNwnRK777qXcVORJV0;-><init>(Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p2, 0x0

    .line 143
    :goto_1
    :try_start_0
    invoke-interface {p6, p2, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
