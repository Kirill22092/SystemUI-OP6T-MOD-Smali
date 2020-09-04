.class final Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
.super Lcom/oneplus/support/core/fragment/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;,
        Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;,
        Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;,
        Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;,
        Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;,
        Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$OpGenerator;,
        Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentTag;,
        Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    }
.end annotation


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static sAnimationListenerField:Ljava/lang/reflect/Field;


# instance fields
.field mActive:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

.field private final mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;",
            ">;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNextFragmentIndex:I

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Lcom/oneplus/support/core/fragment/app/Fragment;

.field mSavedNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mStopped:Z

.field mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1129
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 1130
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 1131
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 1132
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 663
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;-><init>()V

    const/4 v0, 0x0

    .line 685
    iput v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 687
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 697
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 700
    iput v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v0, 0x0

    .line 721
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 722
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 730
    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;)V
    .locals 0

    .line 663
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->scheduleCommit()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Lcom/oneplus/support/core/fragment/app/BackStackRecord;ZZZ)V
    .locals 0

    .line 663
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->completeExecute(Lcom/oneplus/support/core/fragment/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method private addAddedFragments(Lcom/oneplus/support/collection/ArraySet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/ArraySet<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2635
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 2639
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2640
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v1, :cond_2

    .line 2642
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 2643
    iget v2, v9, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    if-ge v2, v0, :cond_1

    .line 2644
    invoke-virtual {v9}, Lcom/oneplus/support/core/fragment/app/Fragment;->getNextAnim()I

    move-result v5

    invoke-virtual {v9}, Lcom/oneplus/support/core/fragment/app/Fragment;->getNextTransition()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;IIIZ)V

    .line 2646
    iget-object v2, v9, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, v9, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    iget-boolean v2, v9, Lcom/oneplus/support/core/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_1

    .line 2647
    invoke-virtual {p1, v9}, Lcom/oneplus/support/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private animateRemoveFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V
    .locals 4

    .line 1630
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1631
    iget-object v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1632
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1633
    invoke-virtual {p1, p3}, Lcom/oneplus/support/core/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 1634
    iget-object p3, p2, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz p3, :cond_0

    .line 1635
    new-instance v2, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;

    invoke-direct {v2, p3, v1, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1637
    iget-object p3, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/oneplus/support/core/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1638
    invoke-static {v2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object p3

    .line 1639
    new-instance v3, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;

    invoke-direct {v3, p0, p3, v1, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1659
    invoke-static {v0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1660
    iget-object p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1662
    :cond_0
    iget-object p3, p2, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 1663
    invoke-virtual {p1, p3}, Lcom/oneplus/support/core/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1664
    new-instance v2, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    invoke-virtual {p3, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1677
    iget-object p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1678
    iget-object p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {p0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1679
    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method private burpActive()V
    .locals 3

    .line 3188
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 3189
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3190
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3191
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .line 2079
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2083
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2084
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2080
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private cleanupExec()V
    .locals 1

    const/4 v0, 0x0

    .line 2257
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2258
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2259
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private completeExecute(Lcom/oneplus/support/core/fragment/app/BackStackRecord;ZZZ)V
    .locals 7

    if-eqz p2, :cond_0

    .line 2530
    invoke-virtual {p1, p4}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_0

    .line 2532
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->executeOps()V

    .line 2534
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2535
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2536
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2537
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 2539
    invoke-static/range {v0 .. v5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->startTransitions(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_1
    if-eqz p4, :cond_2

    .line 2542
    iget p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p2, v6}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2545
    :cond_2
    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz p2, :cond_6

    .line 2546
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 p3, 0x0

    move v0, p3

    :goto_1
    if-ge v0, p2, :cond_6

    .line 2550
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_5

    .line 2551
    iget-object v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_5

    iget v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainerId:I

    .line 2552
    invoke-virtual {p1, v2}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2553
    iget v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_3

    .line 2554
    iget-object v4, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    if-eqz p4, :cond_4

    .line 2557
    iput v3, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mPostponedAlpha:F

    goto :goto_2

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    .line 2559
    iput v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mPostponedAlpha:F

    .line 2560
    iput-boolean p3, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mIsNewlyAdded:Z

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private dispatchStateChange(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3266
    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3267
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3269
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3271
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    return-void

    :catchall_0
    move-exception p1

    .line 3269
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    throw p1
.end method

.method private endAnimatingAwayFragments()V
    .locals 9

    .line 2669
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2671
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v4, :cond_3

    .line 2673
    invoke-virtual {v4}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2675
    invoke-virtual {v4}, Lcom/oneplus/support/core/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v5

    .line 2676
    invoke-virtual {v4}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    .line 2677
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2679
    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 2682
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    :cond_1
    const/4 v2, 0x0

    .line 2684
    invoke-virtual {v4, v2}, Lcom/oneplus/support/core/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 2685
    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;IIIZ)V

    goto :goto_1

    .line 2686
    :cond_2
    invoke-virtual {v4}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2687
    invoke-virtual {v4}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private ensureExecReady(Z)V
    .locals 2

    .line 2205
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    if-nez v0, :cond_4

    .line 2209
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_3

    .line 2213
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_0

    .line 2218
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2221
    :cond_0
    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 2222
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    .line 2223
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    :cond_1
    const/4 p1, 0x1

    .line 2225
    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2227
    :try_start_0
    invoke-direct {p0, v0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2229
    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v0

    .line 2214
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called from main thread of fragment host"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2210
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment host has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2206
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager is already executing transactions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_2

    .line 2613
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    .line 2614
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 2616
    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2620
    :goto_1
    invoke-virtual {v0, v2}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_2

    .line 2622
    :cond_1
    invoke-virtual {v0, v2}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2623
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->executeOps()V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 2385
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    iget-boolean v11, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2387
    iget-object v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    goto :goto_0

    .line 2390
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2392
    :goto_0
    iget-object v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2393
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    move v12, v1

    move v0, v9

    :goto_1
    const/4 v13, 0x1

    if-ge v0, v10, :cond_4

    .line 2395
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    .line 2396
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2398
    iget-object v4, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v2}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v2

    goto :goto_2

    .line 2400
    :cond_1
    iget-object v4, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v2}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v2

    :goto_2
    if-nez v12, :cond_3

    .line 2402
    iget-boolean v3, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    move v12, v1

    goto :goto_4

    :cond_3
    :goto_3
    move v12, v13

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2404
    :cond_4
    iget-object v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_5

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 2407
    invoke-static/range {v0 .. v5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->startTransitions(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2410
    :cond_5
    invoke-static/range {p1 .. p4}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    if-eqz v11, :cond_6

    .line 2414
    new-instance v14, Lcom/oneplus/support/collection/ArraySet;

    invoke-direct {v14}, Lcom/oneplus/support/collection/ArraySet;-><init>()V

    .line 2415
    invoke-direct {p0, v14}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->addAddedFragments(Lcom/oneplus/support/collection/ArraySet;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v14

    .line 2416
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILcom/oneplus/support/collection/ArraySet;)I

    move-result v0

    .line 2418
    invoke-direct {p0, v14}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Lcom/oneplus/support/collection/ArraySet;)V

    move v4, v0

    goto :goto_5

    :cond_6
    move v4, v10

    :goto_5
    if-eq v4, v9, :cond_7

    if-eqz v11, :cond_7

    const/4 v5, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 2423
    invoke-static/range {v0 .. v5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->startTransitions(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2425
    iget v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v0, v13}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    :cond_7
    :goto_6
    if-ge v9, v10, :cond_9

    .line 2429
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    .line 2430
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2431
    iget v1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_8

    .line 2432
    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    const/4 v1, -0x1

    .line 2433
    iput v1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mIndex:I

    .line 2435
    :cond_8
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->runOnCommitRunnables()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_9
    if-eqz v12, :cond_a

    .line 2438
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->reportBackStackChanged()V

    :cond_a
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2291
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_5

    .line 2293
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    const/4 v4, -0x1

    if-eqz p1, :cond_1

    .line 2294
    invoke-static {v3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->access$300(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2295
    invoke-static {v3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->access$400(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;)Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 2296
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2297
    invoke-virtual {v3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2

    .line 2301
    :cond_1
    invoke-virtual {v3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_4

    .line 2302
    invoke-static {v3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->access$400(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;)Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2303
    :cond_2
    iget-object v5, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    if-eqz p1, :cond_3

    .line 2307
    invoke-static {v3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->access$300(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2308
    invoke-static {v3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->access$400(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;)Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_3

    .line 2309
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2311
    invoke-virtual {v3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2

    .line 2313
    :cond_3
    invoke-virtual {v3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private findFragmentUnder(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 4

    .line 2584
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2585
    iget-object v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 2591
    :cond_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 2593
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 2594
    iget-object v3, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v3, v0, :cond_1

    iget-object v3, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2
.end method

.method private forcePostponedTransactions()V
    .locals 2

    .line 2657
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2658
    :goto_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2659
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2706
    monitor-enter p0

    .line 2707
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2711
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2713
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$OpGenerator;

    invoke-interface {v3, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2715
    :cond_1
    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2716
    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2717
    monitor-exit p0

    return v2

    .line 2708
    :cond_2
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 2717
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 3

    const-string v0, "FragmentManager"

    .line 1300
    :try_start_0
    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 1301
    const-class v1, Landroid/view/animation/Animation;

    const-string v2, "mListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 1302
    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1304
    :cond_0
    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "Cannot access Animation\'s mListener field"

    .line 1308
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v1, "No field with the name mListener is found in Animation class"

    .line 1306
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 0

    .line 1152
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1153
    sget-object p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p1, 0xdc

    .line 1154
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1155
    new-instance p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;)V

    return-object p1
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 10

    .line 1138
    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1139
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1141
    sget-object p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p1, 0xdc

    .line 1142
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1143
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1144
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1145
    sget-object p3, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1146
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1147
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1148
    new-instance p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;)V

    return-object p1
.end method

.method private makeRemovedFragmentsInvisible(Lcom/oneplus/support/collection/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/ArraySet<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2450
    invoke-virtual {p1}, Lcom/oneplus/support/collection/ArraySet;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 2452
    invoke-virtual {p1, v0}, Lcom/oneplus/support/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 2453
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-nez v2, :cond_0

    .line 2454
    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 2455
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    iput v3, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    .line 2456
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static modifiesAlpha(Landroid/animation/Animator;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 757
    :cond_0
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 758
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 759
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    move v1, v0

    .line 760
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 761
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "alpha"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 765
    :cond_2
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    .line 766
    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    move v1, v0

    .line 767
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 768
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method static modifiesAlpha(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z
    .locals 4

    .line 738
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v1, v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 740
    :cond_0
    instance-of v1, v0, Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_3

    .line 741
    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 742
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 743
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    .line 749
    :cond_3
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-static {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result p0

    return p0
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .locals 8

    .line 867
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    const/4 v0, 0x1

    .line 868
    invoke-direct {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 870
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPrimaryNav:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 873
    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->peekChildFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 874
    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 880
    :cond_0
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 882
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 884
    :try_start_0
    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->cleanupExec()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->cleanupExec()V

    throw p1

    .line 890
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 891
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->burpActive()V

    return p1
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILcom/oneplus/support/collection/ArraySet;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Lcom/oneplus/support/collection/ArraySet<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_0
    if-lt v0, p3, :cond_5

    .line 2478
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    .line 2479
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2480
    invoke-virtual {v2}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->isPostponed()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    .line 2481
    invoke-virtual {v2, p1, v4, p4}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    if-eqz v4, :cond_4

    .line 2483
    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 2484
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2486
    :cond_1
    new-instance v4, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-direct {v4, v2, v3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Z)V

    .line 2488
    iget-object v6, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2489
    invoke-virtual {v2, v4}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->setOnStartPostponedListener(Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    if-eqz v3, :cond_2

    .line 2493
    invoke-virtual {v2}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->executeOps()V

    goto :goto_2

    .line 2495
    :cond_2
    invoke-virtual {v2, v5}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->executePopOps(Z)V

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_3

    .line 2501
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2502
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2506
    :cond_3
    invoke-direct {p0, p5}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->addAddedFragments(Lcom/oneplus/support/collection/ArraySet;)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 2335
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_6

    .line 2339
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 2344
    invoke-direct {p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2346
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2349
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    iget-boolean v3, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    .line 2353
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 2358
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 2360
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2361
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    iget-boolean v3, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2365
    :cond_2
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    .line 2371
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    .line 2340
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error with the back stack records"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    return-void
.end method

.method public static reverseTransit(I)I
    .locals 3

    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method private scheduleCommit()V
    .locals 4

    .line 2131
    monitor-enter p0

    .line 2132
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2133
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2134
    :goto_0
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 2136
    :cond_2
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2137
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2139
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1279
    :cond_0
    invoke-static {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1280
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 1281
    new-instance p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;

    invoke-direct {p1, p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1283
    :cond_1
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1287
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1288
    iget-object p1, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static setRetaining(Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 2815
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2817
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    const/4 v2, 0x1

    .line 2818
    iput-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mRetaining:Z

    goto :goto_0

    .line 2821
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2823
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    .line 2824
    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->setRetaining(Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 780
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 781
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_1

    .line 782
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 783
    invoke-static {p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->modifiesAlpha(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 7

    .line 787
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    .line 788
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v0, Lcom/oneplus/support/core/util/LogWriter;

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 790
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 791
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array p0, v4, [Ljava/lang/String;

    .line 793
    invoke-virtual {v0, v6, v5, v2, p0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 795
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 799
    invoke-virtual {p0, v6, v5, v2, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 801
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    :goto_0
    throw p1
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1

    const/16 v0, 0x1001

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1003

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2002

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 p0, 0x5

    goto :goto_0

    :cond_3
    const/4 p0, 0x6

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    :goto_0
    return p0
.end method


# virtual methods
.method addBackStackState(Lcom/oneplus/support/core/fragment/app/BackStackRecord;)V
    .locals 1

    .line 2737
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2740
    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V
    .locals 3

    .line 1912
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->makeActive(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    .line 1914
    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1915
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1918
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1919
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1920
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 1921
    iput-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    const/4 v1, 0x0

    .line 1922
    iput-boolean v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mRemoving:Z

    .line 1923
    iget-object v2, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1924
    iput-boolean v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1926
    :cond_1
    iget-boolean v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    .line 1927
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_2
    if-eqz p2, :cond_4

    .line 1930
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1920
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1916
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment already added: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method public allocBackStackIndex(Lcom/oneplus/support/core/fragment/app/BackStackRecord;)I
    .locals 4

    .line 2143
    monitor-enter p0

    .line 2144
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2154
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2155
    sget-boolean v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2157
    monitor-exit p0

    return v0

    .line 2145
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 2146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 2148
    :cond_3
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2149
    sget-boolean v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_4
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2151
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 2159
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public attachController(Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;Lcom/oneplus/support/core/fragment/app/FragmentContainer;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 1

    .line 3199
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    .line 3200
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    .line 3201
    iput-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    .line 3202
    iput-object p3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    return-void

    .line 3199
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public attachFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 2

    .line 2001
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    :cond_0
    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 2003
    iput-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mDetached:Z

    .line 2004
    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-nez v0, :cond_3

    .line 2005
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2008
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2010
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2011
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 2012
    iput-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    .line 2013
    iget-boolean v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean p1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz p1, :cond_3

    .line 2014
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2011
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 2006
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment already added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public beginTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .locals 1

    .line 809
    new-instance v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method completeShowHideFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 7

    .line 1714
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1715
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    iget-boolean v3, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    xor-int/2addr v3, v1

    .line 1716
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    .line 1715
    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->loadAnimation(Lcom/oneplus/support/core/fragment/app/Fragment;IZI)Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1717
    iget-object v3, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v3, :cond_2

    .line 1718
    iget-object v4, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1719
    iget-boolean v3, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_1

    .line 1720
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1721
    invoke-virtual {p1, v2}, Lcom/oneplus/support/core/fragment/app/Fragment;->setHideReplaced(Z)V

    goto :goto_0

    .line 1723
    :cond_0
    iget-object v3, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1724
    iget-object v4, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1725
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1728
    iget-object v5, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$4;

    invoke-direct {v6, p0, v3, v4, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$4;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1740
    :cond_1
    iget-object v3, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1742
    :goto_0
    iget-object v3, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1743
    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 1746
    iget-object v3, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1747
    iget-object v3, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1748
    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 1750
    :cond_3
    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1753
    :goto_1
    iget-object v3, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1755
    invoke-virtual {p1, v2}, Lcom/oneplus/support/core/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 1759
    :cond_5
    :goto_2
    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_6

    .line 1760
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1762
    :cond_6
    iput-boolean v2, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1763
    iget-boolean p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p1, p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public detachFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 3

    .line 1983
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_0
    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1985
    iput-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mDetached:Z

    .line 1986
    iget-boolean v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_3

    .line 1988
    sget-boolean v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove from detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1990
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1991
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1992
    iget-boolean v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    .line 1993
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_2
    const/4 p0, 0x0

    .line 1995
    iput-boolean p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1991
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 1

    const/4 v0, 0x0

    .line 3225
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3226
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStopped:Z

    const/4 v0, 0x2

    .line 3227
    invoke-direct {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x0

    .line 3293
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3294
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3296
    invoke-virtual {v1, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 3375
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 3378
    :goto_0
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3379
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 3381
    invoke-virtual {v3, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public dispatchCreate()V
    .locals 1

    const/4 v0, 0x0

    .line 3219
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3220
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStopped:Z

    const/4 v0, 0x1

    .line 3221
    invoke-direct {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    .line 3311
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    move v0, v1

    move v4, v0

    .line 3316
    :goto_0
    iget-object v5, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 3317
    iget-object v5, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v5, :cond_2

    .line 3319
    invoke-virtual {v5, p1, p2}, Lcom/oneplus/support/core/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v3, :cond_1

    .line 3322
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3324
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3329
    :cond_3
    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    .line 3330
    :goto_1
    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 3331
    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v3, :cond_4

    .line 3332
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 3333
    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onDestroyOptionsMenu()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3338
    :cond_6
    iput-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    return v4
.end method

.method public dispatchDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 3256
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 3257
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    const/4 v0, 0x0

    .line 3258
    invoke-direct {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    const/4 v0, 0x0

    .line 3259
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    .line 3260
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    .line 3261
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    const/4 v0, 0x1

    .line 3252
    invoke-direct {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchLowMemory()V
    .locals 2

    const/4 v0, 0x0

    .line 3302
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3303
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3305
    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performLowMemory()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 2

    .line 3275
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3276
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3278
    invoke-virtual {v1, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method dispatchOnFragmentActivityCreated(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    .line 3501
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3502
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 3503
    instance-of v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3504
    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3505
    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3508
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p3, :cond_2

    .line 3509
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    .line 3510
    :cond_2
    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentAttached(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 3

    .line 3453
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3454
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 3455
    instance-of v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3456
    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3457
    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 3460
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p3, :cond_2

    .line 3461
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    .line 3462
    :cond_2
    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentCreated(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    .line 3485
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3486
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 3487
    instance-of v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3488
    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3489
    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3492
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p3, :cond_2

    .line 3493
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    .line 3494
    :cond_2
    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentDestroyed(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V
    .locals 3

    .line 3623
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3624
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 3625
    instance-of v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3626
    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3627
    invoke-virtual {v0, p1, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    .line 3630
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p2, :cond_2

    .line 3631
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    .line 3632
    :cond_2
    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentDetached(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V
    .locals 3

    .line 3638
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3639
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 3640
    instance-of v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3641
    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3642
    invoke-virtual {v0, p1, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    .line 3645
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p2, :cond_2

    .line 3646
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    .line 3647
    :cond_2
    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentPaused(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V
    .locals 3

    .line 3562
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3563
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 3564
    instance-of v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3565
    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3566
    invoke-virtual {v0, p1, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    .line 3569
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p2, :cond_2

    .line 3570
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    .line 3571
    :cond_2
    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreAttached(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 3

    .line 3437
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3438
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 3439
    instance-of v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3440
    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3441
    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 3444
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p3, :cond_2

    .line 3445
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    .line 3446
    :cond_2
    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreCreated(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    .line 3469
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3470
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 3471
    instance-of v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3472
    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3473
    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3476
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p3, :cond_2

    .line 3477
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    .line 3478
    :cond_2
    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentResumed(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V
    .locals 3

    .line 3547
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3548
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 3549
    instance-of v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3550
    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3551
    invoke-virtual {v0, p1, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    .line 3554
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p2, :cond_2

    .line 3555
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    .line 3556
    :cond_2
    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentSaveInstanceState(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    .line 3593
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3594
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 3595
    instance-of v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3596
    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3597
    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3600
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p3, :cond_2

    .line 3601
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    .line 3602
    :cond_2
    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentStarted(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V
    .locals 3

    .line 3532
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3533
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 3534
    instance-of v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3535
    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3536
    invoke-virtual {v0, p1, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    .line 3539
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p2, :cond_2

    .line 3540
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    .line 3541
    :cond_2
    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentStopped(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V
    .locals 3

    .line 3577
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3578
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 3579
    instance-of v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3580
    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3581
    invoke-virtual {v0, p1, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    .line 3584
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p2, :cond_2

    .line 3585
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    .line 3586
    :cond_2
    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewCreated(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3

    .line 3517
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3518
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 3519
    instance-of v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3520
    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3521
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 3524
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p4, :cond_2

    .line 3525
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    .line 3526
    :cond_2
    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewDestroyed(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V
    .locals 3

    .line 3608
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3609
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 3610
    instance-of v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3611
    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3612
    invoke-virtual {v0, p1, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    .line 3615
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p2, :cond_2

    .line 3616
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    .line 3617
    :cond_2
    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 3360
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 3363
    :goto_0
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3364
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 3366
    invoke-virtual {v3, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2

    .line 3390
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3393
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3394
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 3396
    invoke-virtual {v1, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dispatchPause()V
    .locals 1

    const/4 v0, 0x3

    .line 3243
    invoke-direct {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 2

    .line 3284
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3285
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3287
    invoke-virtual {v1, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 3344
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 3348
    :goto_0
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3349
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 3351
    invoke-virtual {v3, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public dispatchResume()V
    .locals 1

    const/4 v0, 0x0

    .line 3237
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3238
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStopped:Z

    const/4 v0, 0x4

    .line 3239
    invoke-direct {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchStart()V
    .locals 1

    const/4 v0, 0x0

    .line 3231
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3232
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStopped:Z

    const/4 v0, 0x3

    .line 3233
    invoke-direct {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchStop()V
    .locals 1

    const/4 v0, 0x1

    .line 3247
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStopped:Z

    const/4 v0, 0x2

    .line 3248
    invoke-direct {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method doPendingDeferredStart()V
    .locals 1

    .line 2722
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2723
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 2724
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1024
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1026
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    .line 1028
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1030
    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 1031
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 1032
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v4, :cond_0

    .line 1034
    invoke-virtual {v4, v0, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1040
    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1042
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Added Fragments:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    .line 1044
    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 1045
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    .line 1046
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 1048
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v4}, Lcom/oneplus/support/core/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1053
    :cond_2
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1054
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1056
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Fragments Created Menus:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_3

    .line 1058
    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 1059
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 1060
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/oneplus/support/core/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1065
    :cond_3
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 1066
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1068
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Back Stack:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_4

    .line 1070
    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    .line 1071
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 1072
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v4, v0, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1078
    :cond_4
    monitor-enter p0

    .line 1079
    :try_start_0
    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 1080
    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 1082
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack Indices:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v2

    :goto_4
    if-ge p4, p2, :cond_5

    .line 1084
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    .line 1085
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    .line 1086
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 1091
    :cond_5
    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 1092
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    .line 1098
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 1100
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Pending Actions:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    if-ge v2, p2, :cond_7

    .line 1102
    iget-object p4, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$OpGenerator;

    .line 1103
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    .line 1104
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1109
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1111
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1112
    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz p2, :cond_8

    .line 1113
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1115
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 1116
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 1117
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStopped:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 1118
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1119
    iget-boolean p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz p2, :cond_9

    .line 1120
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    iget-boolean p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1123
    :cond_9
    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 1124
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNoTransactionsBecause="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    .line 1095
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public enqueueAction(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 2106
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2108
    :cond_0
    monitor-enter p0

    .line 2109
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2116
    :cond_1
    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    .line 2117
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 2119
    :cond_2
    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2120
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->scheduleCommit()V

    .line 2121
    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 2112
    monitor-exit p0

    return-void

    .line 2114
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 2121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method ensureInflatedFragmentView(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 3

    .line 1688
    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_2

    .line 1689
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1691
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1692
    iput-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    const/4 v1, 0x0

    .line 1693
    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1694
    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1695
    :cond_0
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Lcom/oneplus/support/core/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1696
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 1698
    :cond_1
    iput-object v2, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    :cond_2
    :goto_0
    return-void
.end method

.method public execPendingActions()Z
    .locals 4

    const/4 v0, 0x1

    .line 2266
    invoke-direct {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    const/4 v1, 0x0

    .line 2269
    :goto_0
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2270
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2272
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2274
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->cleanupExec()V

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    .line 2279
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2280
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->burpActive()V

    return v1
.end method

.method public executePendingTransactions()Z
    .locals 1

    .line 814
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    .line 815
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->forcePostponedTransactions()V

    return v0
.end method

.method public findFragmentById(I)Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 3

    .line 2024
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2025
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 2026
    iget v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2030
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 2032
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 2033
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_2

    .line 2034
    iget v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 3

    if-eqz p1, :cond_1

    .line 2047
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2048
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 2049
    iget-object v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2054
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 2056
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 2057
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_2

    .line 2058
    iget-object v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 2

    .line 2067
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2068
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2069
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 2070
    invoke-virtual {v1, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public freeBackStackIndex(I)V
    .locals 3

    .line 2188
    monitor-enter p0

    .line 2189
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2190
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 2193
    :cond_0
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2195
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 4

    const/4 v0, -0x1

    .line 932
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_1

    return-object v0

    .line 938
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": index "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v1
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 946
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 950
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 951
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    return-object p0
.end method

.method public getPrimaryNavigationFragment()Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 0

    .line 3414
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPrimaryNav:Lcom/oneplus/support/core/fragment/app/Fragment;

    return-object p0
.end method

.method public hideFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 1

    .line 1957
    sget-boolean p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hide: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_0
    iget-boolean p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 1959
    iput-boolean p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    .line 1962
    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr p0, v0

    iput-boolean p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_1
    return-void
.end method

.method isStateAtLeast(I)Z
    .locals 0

    .line 1314
    iget p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStateSaved()Z
    .locals 1

    .line 2094
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStopped:Z

    if-eqz p0, :cond_0

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

.method loadAnimation(Lcom/oneplus/support/core/fragment/app/Fragment;IZI)Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 5

    .line 1160
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getNextAnim()I

    move-result v0

    .line 1161
    invoke-virtual {p1, p2, p3, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1163
    new-instance p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;)V

    return-object p0

    .line 1166
    :cond_0
    invoke-virtual {p1, p2, p3, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1168
    new-instance p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;)V

    return-object p0

    :cond_1
    if-eqz v0, :cond_5

    .line 1172
    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "anim"

    .line 1173
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1178
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1180
    new-instance v4, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v4, v3, v2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v4

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1185
    throw p0

    :catch_1
    :cond_3
    :goto_0
    if-nez v1, :cond_5

    .line 1193
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1195
    new-instance v3, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v3, v1, v2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v3

    :catch_2
    move-exception v1

    if-nez p1, :cond_4

    .line 1203
    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1205
    new-instance p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;)V

    return-object p0

    .line 1200
    :cond_4
    throw v1

    :cond_5
    if-nez p2, :cond_6

    return-object v2

    .line 1215
    :cond_6
    invoke-static {p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result p1

    if-gez p1, :cond_7

    return-object v2

    :cond_7
    const p2, 0x3f79999a    # 0.975f

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    if-nez p4, :cond_8

    .line 1236
    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1237
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    goto :goto_1

    .line 1232
    :pswitch_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p0

    return-object p0

    .line 1230
    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p3, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p0

    return-object p0

    .line 1228
    :pswitch_2
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x3f89999a    # 1.075f

    invoke-static {p0, v0, p1, v0, p3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p0

    return-object p0

    .line 1226
    :pswitch_3
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2, v0, p3, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p0

    return-object p0

    .line 1224
    :pswitch_4
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2, v0, p3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p0

    return-object p0

    .line 1222
    :pswitch_5
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 p1, 0x3f900000    # 1.125f

    invoke-static {p0, p1, v0, p3, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_1
    if-nez p4, :cond_9

    :cond_9
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method makeActive(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 2

    .line 1886
    iget v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    return-void

    .line 1890
    :cond_0
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->setIndex(ILcom/oneplus/support/core/fragment/app/Fragment;)V

    .line 1891
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1892
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 1894
    :cond_1
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1895
    sget-boolean p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Allocated fragment index "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method makeInactive(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 2

    .line 1899
    iget v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    return-void

    .line 1903
    :cond_0
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeing fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_1
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1908
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->initState()V

    return-void
.end method

.method moveFragmentToExpectedState(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1776
    :cond_0
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 1777
    iget-boolean v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mRemoving:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1778
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1779
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1781
    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    :goto_0
    move v6, v0

    .line 1784
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getNextTransition()I

    move-result v7

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;IIIZ)V

    .line 1786
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1788
    invoke-direct {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->findFragmentUnder(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1790
    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1792
    iget-object v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1793
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1794
    iget-object v4, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_3

    .line 1796
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1797
    iget-object v4, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1800
    :cond_3
    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 1802
    iget v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_4

    .line 1803
    iget-object v4, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1805
    :cond_4
    iput v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1806
    iput-boolean v3, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 1808
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    .line 1809
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v1

    .line 1808
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->loadAnimation(Lcom/oneplus/support/core/fragment/app/Fragment;IZI)Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1811
    iget-object v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1812
    iget-object v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_5

    .line 1813
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 1815
    :cond_5
    iget-object v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v2, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1816
    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1821
    :cond_6
    :goto_1
    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_7

    .line 1822
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->completeShowHideFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    :cond_7
    return-void
.end method

.method moveToState(IZ)V
    .locals 3

    .line 1836
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1837
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1840
    iget p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    if-ne p1, p2, :cond_2

    return-void

    .line 1844
    :cond_2
    iput p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 1846
    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz p1, :cond_7

    .line 1849
    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_3

    .line 1851
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 1852
    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1857
    :cond_3
    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    move v0, p2

    :goto_2
    if-ge v0, p1, :cond_6

    .line 1859
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_5

    .line 1860
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mRemoving:Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-nez v2, :cond_5

    .line 1861
    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1865
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1867
    iget-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 1868
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1869
    iput-boolean p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_7
    return-void
.end method

.method moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 6

    .line 1684
    iget v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;IIIZ)V

    return-void
.end method

.method moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;IIIZ)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1321
    iget-boolean v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v0, p2

    if-le v0, v8, :cond_2

    move v0, v8

    .line 1324
    :cond_2
    :goto_1
    iget-boolean v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_4

    iget v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    if-le v0, v1, :cond_4

    if-nez v1, :cond_3

    .line 1325
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v8

    goto :goto_2

    .line 1330
    :cond_3
    iget v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    .line 1335
    :cond_4
    :goto_2
    iget-boolean v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mDeferStart:Z

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v1, :cond_5

    iget v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    if-ge v1, v9, :cond_5

    if-le v0, v10, :cond_5

    move v11, v10

    goto :goto_3

    :cond_5
    move v11, v0

    .line 1338
    :goto_3
    iget v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    const-string v12, "FragmentManager"

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-gt v0, v11, :cond_24

    .line 1342
    iget-boolean v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_6

    return-void

    .line 1345
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1350
    :cond_7
    invoke-virtual {v7, v14}, Lcom/oneplus/support/core/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1351
    invoke-virtual {v7, v14}, Lcom/oneplus/support/core/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1352
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;IIIZ)V

    .line 1354
    :cond_8
    iget v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    if-eqz v0, :cond_9

    if-eq v0, v8, :cond_14

    if-eq v0, v10, :cond_20

    if-eq v0, v9, :cond_22

    goto/16 :goto_12

    :cond_9
    if-lez v11, :cond_14

    .line 1357
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_a
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    .line 1359
    iget-object v1, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1360
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1359
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1361
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1363
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v6, v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 1365
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_b

    .line 1366
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mTargetRequestCode:I

    .line 1369
    :cond_b
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 1370
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 1371
    iput-object v14, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    goto :goto_4

    .line 1373
    :cond_c
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 1376
    :goto_4
    iget-boolean v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_d

    .line 1377
    iput-boolean v8, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mDeferStart:Z

    if-le v11, v10, :cond_d

    move v11, v10

    .line 1384
    :cond_d
    iget-object v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iput-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    .line 1385
    iget-object v1, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    iput-object v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mParentFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_e

    .line 1387
    iget-object v0, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getFragmentManagerImpl()Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    move-result-object v0

    :goto_5
    iput-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    .line 1391
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    const-string v15, "Fragment "

    if-eqz v0, :cond_10

    .line 1392
    iget-object v1, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-ne v0, v1, :cond_f

    .line 1397
    iget v0, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    if-ge v0, v8, :cond_10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    .line 1398
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;IIIZ)V

    goto :goto_6

    .line 1393
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1402
    :cond_10
    :goto_6
    iget-object v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v13}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 1403
    iput-boolean v13, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1404
    iget-object v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1405
    iget-boolean v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_13

    .line 1409
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mParentFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-nez v0, :cond_11

    .line 1410
    iget-object v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, v7}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onAttachFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    goto :goto_7

    .line 1412
    :cond_11
    invoke-virtual {v0, v7}, Lcom/oneplus/support/core/fragment/app/Fragment;->onAttachFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    .line 1414
    :goto_7
    iget-object v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v13}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 1416
    iget-boolean v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mIsCreated:Z

    if-nez v0, :cond_12

    .line 1417
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v13}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1418
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1419
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v13}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_8

    .line 1421
    :cond_12
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1422
    iput v8, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    .line 1424
    :goto_8
    iput-boolean v13, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mRetaining:Z

    goto :goto_9

    .line 1406
    :cond_13
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1431
    :cond_14
    :goto_9
    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->ensureInflatedFragmentView(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    if-le v11, v8, :cond_20

    .line 1434
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_15
    iget-boolean v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_1e

    .line 1437
    iget v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_18

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 1444
    iget-object v1, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    invoke-virtual {v1, v0}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_19

    .line 1445
    iget-boolean v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mRestored:Z

    if-eqz v1, :cond_16

    goto :goto_b

    .line 1448
    :cond_16
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    const-string v0, "unknown"

    .line 1452
    :goto_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No view found for id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainerId:I

    .line 1454
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1452
    invoke-direct {v6, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v14

    .line 1439
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v14

    :cond_18
    move-object v0, v14

    .line 1459
    :cond_19
    :goto_b
    iput-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1460
    iget-object v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v1, v0, v2}, Lcom/oneplus/support/core/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1462
    iget-object v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_1d

    .line 1463
    iput-object v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1464
    invoke-virtual {v1, v13}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    if-eqz v0, :cond_1a

    .line 1466
    iget-object v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1468
    :cond_1a
    iget-boolean v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1b

    .line 1469
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1471
    :cond_1b
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1472
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v1, v13}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1476
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    goto :goto_c

    :cond_1c
    move v8, v13

    :goto_c
    iput-boolean v8, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_d

    .line 1479
    :cond_1d
    iput-object v14, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1483
    :cond_1e
    :goto_d
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1484
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v13}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1485
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 1486
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1488
    :cond_1f
    iput-object v14, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_20
    if-le v11, v10, :cond_22

    .line 1493
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performStart()V

    .line 1495
    invoke-virtual {v6, v7, v13}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    :cond_22
    if-le v11, v9, :cond_37

    .line 1500
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performResume()V

    .line 1502
    invoke-virtual {v6, v7, v13}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    .line 1503
    iput-object v14, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1504
    iput-object v14, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_12

    :cond_24
    if-le v0, v11, :cond_37

    if-eq v0, v8, :cond_2f

    if-eq v0, v10, :cond_29

    if-eq v0, v9, :cond_27

    const/4 v1, 0x4

    if-eq v0, v1, :cond_25

    goto/16 :goto_12

    :cond_25
    if-ge v11, v1, :cond_27

    .line 1511
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performPause()V

    .line 1513
    invoke-virtual {v6, v7, v13}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    :cond_27
    if-ge v11, v9, :cond_29

    .line 1518
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performStop()V

    .line 1520
    invoke-virtual {v6, v7, v13}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    :cond_29
    if-ge v11, v10, :cond_2f

    .line 1525
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_2a
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 1529
    iget-object v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, v7}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onShouldSaveFragmentState(Lcom/oneplus/support/core/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_2b

    .line 1530
    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->saveFragmentViewState(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    .line 1533
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performDestroyView()V

    .line 1534
    invoke-virtual {v6, v7, v13}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    .line 1535
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2e

    iget-object v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2e

    .line 1537
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1538
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1540
    iget v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    if-lez v0, :cond_2c

    iget-boolean v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_2c

    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1541
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2c

    iget v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mPostponedAlpha:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2c

    move/from16 v0, p3

    move/from16 v2, p4

    .line 1543
    invoke-virtual {v6, v7, v0, v13, v2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->loadAnimation(Lcom/oneplus/support/core/fragment/app/Fragment;IZI)Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v0

    goto :goto_e

    :cond_2c
    move-object v0, v14

    .line 1546
    :goto_e
    iput v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mPostponedAlpha:F

    if-eqz v0, :cond_2d

    .line 1548
    invoke-direct {v6, v7, v0, v11}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->animateRemoveFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V

    .line 1550
    :cond_2d
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1552
    :cond_2e
    iput-object v14, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1553
    iput-object v14, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1556
    iput-object v14, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    .line 1557
    iget-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Lcom/oneplus/support/lifecycle/MutableLiveData;

    invoke-virtual {v0, v14}, Lcom/oneplus/support/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 1558
    iput-object v14, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1559
    iput-boolean v13, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mInLayout:Z

    :cond_2f
    if-ge v11, v8, :cond_37

    .line 1564
    iget-boolean v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_31

    .line 1571
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1572
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    .line 1573
    invoke-virtual {v7, v14}, Lcom/oneplus/support/core/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1574
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_f

    .line 1575
    :cond_30
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1576
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 1577
    invoke-virtual {v7, v14}, Lcom/oneplus/support/core/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1578
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1581
    :cond_31
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_36

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_32

    goto :goto_11

    .line 1589
    :cond_32
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_33
    iget-boolean v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_34

    .line 1591
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performDestroy()V

    .line 1592
    invoke-virtual {v6, v7, v13}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    goto :goto_10

    .line 1594
    :cond_34
    iput v13, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    .line 1597
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->performDetach()V

    .line 1598
    invoke-virtual {v6, v7, v13}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    if-nez p5, :cond_37

    .line 1600
    iget-boolean v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_35

    .line 1601
    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->makeInactive(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    goto :goto_12

    .line 1603
    :cond_35
    iput-object v14, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    .line 1604
    iput-object v14, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mParentFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 1605
    iput-object v14, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    goto :goto_12

    .line 1586
    :cond_36
    :goto_11
    invoke-virtual {v7, v11}, Lcom/oneplus/support/core/fragment/app/Fragment;->setStateAfterAnimating(I)V

    goto :goto_13

    :cond_37
    :goto_12
    move v8, v11

    .line 1613
    :goto_13
    iget v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    if-eq v0, v8, :cond_38

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToState: Fragment state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated inline; expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iput v8, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    :cond_38
    return-void
.end method

.method public noteStateNotSaved()V
    .locals 3

    const/4 v0, 0x0

    .line 3206
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    const/4 v0, 0x0

    .line 3207
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3208
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3209
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3211
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v2, :cond_0

    .line 3213
    invoke-virtual {v2}, Lcom/oneplus/support/core/fragment/app/Fragment;->noteStateNotSaved()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 12

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p4

    const-string v3, "fragment"

    move-object v4, p2

    .line 3694
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    const-string v3, "class"

    .line 3698
    invoke-interface {v2, v4, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3699
    sget-object v5, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {p3, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 3701
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object v7, v3

    const/4 v3, -0x1

    const/4 v8, 0x1

    .line 3703
    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x2

    .line 3704
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3705
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3707
    iget-object v5, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v5}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/oneplus/support/core/fragment/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    return-object v4

    :cond_2
    if-eqz p1, :cond_3

    .line 3713
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    :cond_3
    if-ne v6, v3, :cond_5

    if-ne v9, v3, :cond_5

    if-eqz v10, :cond_4

    goto :goto_0

    .line 3715
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-eq v9, v3, :cond_6

    .line 3722
    invoke-virtual {p0, v9}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->findFragmentById(I)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v5

    goto :goto_1

    :cond_6
    move-object v5, v4

    :goto_1
    if-nez v5, :cond_7

    if-eqz v10, :cond_7

    .line 3724
    invoke-virtual {p0, v10}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v5

    :cond_7
    if-nez v5, :cond_8

    if-eq v6, v3, :cond_8

    .line 3727
    invoke-virtual {p0, v6}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->findFragmentById(I)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v5

    .line 3730
    :cond_8
    sget-boolean v3, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreateView: id=0x"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3731
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " fname="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " existing="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "FragmentManager"

    .line 3730
    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v5, :cond_b

    .line 3734
    iget-object v3, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    invoke-virtual {v3, p3, v7, v4}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v1

    .line 3735
    iput-boolean v8, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v9, :cond_a

    move v3, v9

    goto :goto_2

    :cond_a
    move v3, v6

    .line 3736
    :goto_2
    iput v3, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentId:I

    .line 3737
    iput v6, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainerId:I

    .line 3738
    iput-object v10, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 3739
    iput-boolean v8, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mInLayout:Z

    .line 3740
    iput-object v0, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    .line 3741
    iget-object v3, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iput-object v3, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    .line 3742
    invoke-virtual {v3}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v2, v4}, Lcom/oneplus/support/core/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3743
    invoke-virtual {p0, v1, v8}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->addFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Z)V

    move-object v6, v1

    goto :goto_3

    .line 3745
    :cond_b
    iget-boolean v1, v5, Lcom/oneplus/support/core/fragment/app/Fragment;->mInLayout:Z

    if-nez v1, :cond_11

    .line 3755
    iput-boolean v8, v5, Lcom/oneplus/support/core/fragment/app/Fragment;->mInLayout:Z

    .line 3756
    iget-object v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iput-object v1, v5, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    .line 3760
    iget-boolean v3, v5, Lcom/oneplus/support/core/fragment/app/Fragment;->mRetaining:Z

    if-nez v3, :cond_c

    .line 3761
    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v5, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v5, v1, v2, v3}, Lcom/oneplus/support/core/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_c
    move-object v6, v5

    .line 3769
    :goto_3
    iget v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    if-ge v1, v8, :cond_d

    iget-boolean v1, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v1, :cond_d

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    .line 3770
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;IIIZ)V

    goto :goto_4

    .line 3772
    :cond_d
    invoke-virtual {p0, v6}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    .line 3775
    :goto_4
    iget-object v0, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_10

    if-eqz v9, :cond_e

    .line 3780
    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 3782
    :cond_e
    iget-object v0, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 3783
    iget-object v0, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3785
    :cond_f
    iget-object v0, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    return-object v0

    .line 3776
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3748
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Duplicate id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3749
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", or parent id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3750
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 3790
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public performPendingDeferredStart(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 7

    .line 1257
    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_1

    .line 1258
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 1260
    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1263
    iput-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mDeferStart:Z

    .line 1264
    iget v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;IIIZ)V

    :cond_1
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 3

    .line 826
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 827
    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 2746
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_2

    .line 2750
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return v1

    .line 2754
    :cond_1
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2755
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2
    if-nez p3, :cond_4

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, -0x1

    move v0, p3

    goto :goto_4

    .line 2761
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_7

    .line 2763
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    if-eqz p3, :cond_5

    .line 2764
    invoke-virtual {v3}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    if-ltz p4, :cond_6

    .line 2767
    iget v3, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mIndex:I

    if-ne p4, v3, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-gez v0, :cond_8

    return v1

    :cond_8
    and-int/2addr p5, v2

    if-eqz p5, :cond_b

    :cond_9
    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    .line 2779
    iget-object p5, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    if-eqz p3, :cond_a

    .line 2780
    invoke-virtual {p5}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_a
    if-ltz p4, :cond_b

    iget p5, p5, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mIndex:I

    if-ne p4, p5, :cond_b

    goto :goto_3

    .line 2789
    :cond_b
    :goto_4
    iget-object p3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne v0, p3, :cond_c

    return v1

    .line 2792
    :cond_c
    iget-object p3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_5
    if-le p3, v0, :cond_d

    .line 2793
    iget-object p4, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2794
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_d
    :goto_6
    return v2
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 1

    .line 922
    iget v0, p3, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 926
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    .line 923
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not currently in the FragmentManager"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public removeFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 3

    .line 1936
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1938
    iget-boolean v2, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 1939
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1940
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1941
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1942
    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_2

    .line 1943
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_2
    const/4 p0, 0x0

    .line 1945
    iput-boolean p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    .line 1946
    iput-boolean v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mRemoving:Z

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 1941
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method reportBackStackChanged()V
    .locals 2

    .line 2729
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2730
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2731
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Lcom/oneplus/support/core/fragment/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 3053
    :cond_0
    check-cast p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;

    .line 3054
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mActive:[Lcom/oneplus/support/core/fragment/app/FragmentState;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    .line 3062
    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v2

    .line 3063
    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v3

    .line 3064
    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;->getViewModelStores()Ljava/util/List;

    move-result-object v4

    if-eqz v2, :cond_2

    .line 3065
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_8

    .line 3067
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 3068
    sget-boolean v8, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreAllState: re-attaching retained "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FragmentManager"

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v8, v1

    .line 3070
    :goto_2
    iget-object v9, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mActive:[Lcom/oneplus/support/core/fragment/app/FragmentState;

    array-length v10, v9

    if-ge v8, v10, :cond_4

    aget-object v9, v9, v8

    iget v9, v9, Lcom/oneplus/support/core/fragment/app/FragmentState;->mIndex:I

    iget v10, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    if-eq v9, v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3073
    :cond_4
    iget-object v9, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mActive:[Lcom/oneplus/support/core/fragment/app/FragmentState;

    array-length v10, v9

    if-eq v8, v10, :cond_6

    .line 3077
    aget-object v8, v9, v8

    .line 3078
    iput-object v7, v8, Lcom/oneplus/support/core/fragment/app/FragmentState;->mInstance:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 3079
    iput-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3080
    iput v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mBackStackNesting:I

    .line 3081
    iput-boolean v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mInLayout:Z

    .line 3082
    iput-boolean v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    .line 3083
    iput-object v0, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 3084
    iget-object v9, v8, Lcom/oneplus/support/core/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v9, :cond_5

    .line 3085
    iget-object v10, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v10}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3086
    iget-object v9, v8, Lcom/oneplus/support/core/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:view_state"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v9

    iput-object v9, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3088
    iget-object v8, v8, Lcom/oneplus/support/core/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3074
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find active fragment with index "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v0

    :cond_7
    move-object v3, v0

    move-object v4, v3

    .line 3095
    :cond_8
    new-instance v2, Landroid/util/SparseArray;

    iget-object v5, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mActive:[Lcom/oneplus/support/core/fragment/app/FragmentState;

    array-length v5, v5

    invoke-direct {v2, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v2, v1

    .line 3096
    :goto_3
    iget-object v5, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mActive:[Lcom/oneplus/support/core/fragment/app/FragmentState;

    array-length v6, v5

    if-ge v2, v6, :cond_d

    .line 3097
    aget-object v5, v5, v2

    if-eqz v5, :cond_c

    if-eqz v3, :cond_9

    .line 3100
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 3101
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    move-object v11, v6

    goto :goto_4

    :cond_9
    move-object v11, v0

    :goto_4
    if-eqz v4, :cond_a

    .line 3104
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_a

    .line 3105
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/support/lifecycle/ViewModelStore;

    move-object v12, v6

    goto :goto_5

    :cond_a
    move-object v12, v0

    .line 3107
    :goto_5
    iget-object v8, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v9, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    iget-object v10, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Lcom/oneplus/support/core/fragment/app/FragmentState;->instantiate(Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;Lcom/oneplus/support/core/fragment/app/FragmentContainer;Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;Lcom/oneplus/support/lifecycle/ViewModelStore;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v6

    .line 3109
    sget-boolean v7, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreAllState: active #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FragmentManager"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    :cond_b
    iget-object v7, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v8, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3114
    iput-object v0, v5, Lcom/oneplus/support/core/fragment/app/FragmentState;->mInstance:Lcom/oneplus/support/core/fragment/app/Fragment;

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    if-eqz p2, :cond_10

    .line 3120
    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 3121
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_6

    :cond_e
    move v2, v1

    :goto_6
    move v3, v1

    :goto_7
    if-ge v3, v2, :cond_10

    .line 3123
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 3124
    iget v5, v4, Lcom/oneplus/support/core/fragment/app/Fragment;->mTargetIndex:I

    if-ltz v5, :cond_f

    .line 3125
    iget-object v6, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/support/core/fragment/app/Fragment;

    iput-object v5, v4, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 3126
    iget-object v5, v4, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-nez v5, :cond_f

    .line 3127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-attaching retained fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " target no longer exists: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/oneplus/support/core/fragment/app/Fragment;->mTargetIndex:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FragmentManager"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3135
    :cond_10
    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 3136
    iget-object p2, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mAdded:[I

    if-eqz p2, :cond_14

    move p2, v1

    .line 3137
    :goto_8
    iget-object v2, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mAdded:[I

    array-length v3, v2

    if-ge p2, v3, :cond_14

    .line 3138
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    aget v2, v2, p2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v2, :cond_13

    const/4 v3, 0x1

    .line 3143
    iput-boolean v3, v2, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    .line 3144
    sget-boolean v3, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: added #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    :cond_11
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 3148
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3149
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3150
    monitor-exit v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3146
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already added!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3140
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No instantiated fragment for index #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mAdded:[I

    aget p1, p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v0

    .line 3155
    :cond_14
    iget-object p2, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mBackStack:[Lcom/oneplus/support/core/fragment/app/BackStackState;

    if-eqz p2, :cond_17

    .line 3156
    new-instance v0, Ljava/util/ArrayList;

    array-length p2, p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move p2, v1

    .line 3157
    :goto_9
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mBackStack:[Lcom/oneplus/support/core/fragment/app/BackStackState;

    array-length v2, v0

    if-ge p2, v2, :cond_18

    .line 3158
    aget-object v0, v0, p2

    invoke-virtual {v0, p0}, Lcom/oneplus/support/core/fragment/app/BackStackState;->instantiate(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;)Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    move-result-object v0

    .line 3159
    sget-boolean v2, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_15

    .line 3160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreAllState: back stack #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    new-instance v2, Lcom/oneplus/support/core/util/LogWriter;

    const-string v3, "FragmentManager"

    invoke-direct {v2, v3}, Lcom/oneplus/support/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 3163
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "  "

    .line 3164
    invoke-virtual {v0, v2, v3, v1}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 3165
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 3167
    :cond_15
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3168
    iget v2, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v2, :cond_16

    .line 3169
    invoke-virtual {p0, v2, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->setBackStackIndex(ILcom/oneplus/support/core/fragment/app/BackStackRecord;)V

    :cond_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 3173
    :cond_17
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3176
    :cond_18
    iget p2, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    if-ltz p2, :cond_19

    .line 3177
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/support/core/fragment/app/Fragment;

    iput-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPrimaryNav:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 3179
    :cond_19
    iget p1, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    iput p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    return-void
.end method

.method retainNonConfig()Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;
    .locals 1

    .line 2801
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->setRetaining(Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;)V

    .line 2802
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    return-object p0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 13

    .line 2939
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 2940
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    .line 2941
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    const/4 v0, 0x1

    .line 2943
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v1, 0x0

    .line 2944
    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    .line 2946
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_5

    .line 2951
    :cond_0
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2952
    new-array v3, v2, [Lcom/oneplus/support/core/fragment/app/FragmentState;

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const-string v7, " has cleared index: "

    const-string v8, "Failure saving state: active "

    const-string v9, ": "

    const-string v10, "FragmentManager"

    if-ge v5, v2, :cond_8

    .line 2955
    iget-object v11, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v11, :cond_7

    .line 2957
    iget v6, v11, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    if-ltz v6, :cond_6

    .line 2965
    new-instance v6, Lcom/oneplus/support/core/fragment/app/FragmentState;

    invoke-direct {v6, v11}, Lcom/oneplus/support/core/fragment/app/FragmentState;-><init>(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    .line 2966
    aput-object v6, v3, v5

    .line 2968
    iget v7, v11, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    if-lez v7, :cond_3

    iget-object v7, v6, Lcom/oneplus/support/core/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v7, :cond_3

    .line 2969
    invoke-virtual {p0, v11}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->saveFragmentBasicState(Lcom/oneplus/support/core/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v6, Lcom/oneplus/support/core/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2971
    iget-object v7, v11, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v7, :cond_4

    .line 2972
    iget v7, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    if-ltz v7, :cond_2

    .line 2977
    iget-object v7, v6, Lcom/oneplus/support/core/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v7, :cond_1

    .line 2978
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, v6, Lcom/oneplus/support/core/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2980
    :cond_1
    iget-object v7, v6, Lcom/oneplus/support/core/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v8, v11, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    const-string v12, "android:target_state"

    invoke-virtual {p0, v7, v12, v8}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    .line 2982
    iget v7, v11, Lcom/oneplus/support/core/fragment/app/Fragment;->mTargetRequestCode:I

    if-eqz v7, :cond_4

    .line 2983
    iget-object v8, v6, Lcom/oneplus/support/core/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v12, "android:target_req_state"

    invoke-virtual {v8, v12, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 2973
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure saving state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has target not in fragment manager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v1

    .line 2990
    :cond_3
    iget-object v7, v11, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v7, v6, Lcom/oneplus/support/core/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2993
    :cond_4
    :goto_1
    sget-boolean v7, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saved state of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/oneplus/support/core/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v6, v0

    goto :goto_2

    .line 2958
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v1

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    if-nez v6, :cond_a

    .line 2999
    sget-boolean p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p0, :cond_9

    const-string p0, "saveAllState: no fragments!"

    invoke-static {v10, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v1

    .line 3007
    :cond_a
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 3009
    new-array v2, v0, [I

    move v5, v4

    :goto_3
    if-ge v5, v0, :cond_e

    .line 3011
    iget-object v6, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/support/core/fragment/app/Fragment;

    iget v6, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    aput v6, v2, v5

    .line 3012
    aget v6, v2, v5

    if-ltz v6, :cond_c

    .line 3017
    sget-boolean v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_b

    .line 3018
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveAllState: adding fragment #"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 3019
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3018
    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3013
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 3014
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3013
    invoke-direct {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v1

    :cond_d
    move-object v2, v1

    .line 3025
    :cond_e
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 3026
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 3028
    new-array v1, v0, [Lcom/oneplus/support/core/fragment/app/BackStackState;

    :goto_4
    if-ge v4, v0, :cond_10

    .line 3030
    new-instance v5, Lcom/oneplus/support/core/fragment/app/BackStackState;

    iget-object v6, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    invoke-direct {v5, v6}, Lcom/oneplus/support/core/fragment/app/BackStackState;-><init>(Lcom/oneplus/support/core/fragment/app/BackStackRecord;)V

    aput-object v5, v1, v4

    .line 3031
    sget-boolean v5, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding back stack #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3032
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3031
    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3037
    :cond_10
    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;

    invoke-direct {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;-><init>()V

    .line 3038
    iput-object v3, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mActive:[Lcom/oneplus/support/core/fragment/app/FragmentState;

    .line 3039
    iput-object v2, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mAdded:[I

    .line 3040
    iput-object v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mBackStack:[Lcom/oneplus/support/core/fragment/app/BackStackState;

    .line 3041
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPrimaryNav:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_11

    .line 3042
    iget v1, v1, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    iput v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 3044
    :cond_11
    iget v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 3045
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->saveNonConfig()V

    return-object v0

    :cond_12
    :goto_5
    return-object v1
.end method

.method saveFragmentBasicState(Lcom/oneplus/support/core/fragment/app/Fragment;)Landroid/os/Bundle;
    .locals 2

    .line 2905
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2906
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2908
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 2909
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2910
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2911
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2912
    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2915
    :goto_0
    iget-object v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2916
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->saveFragmentViewState(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    .line 2918
    :cond_2
    iget-object p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz p0, :cond_4

    if-nez v0, :cond_3

    .line 2920
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    .line 2922
    :cond_3
    iget-object p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2925
    :cond_4
    iget-boolean p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez p0, :cond_6

    if-nez v0, :cond_5

    .line 2927
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    .line 2930
    :cond_5
    iget-boolean p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mUserVisibleHint:Z

    const-string p1, "android:user_visible_hint"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    return-object v0
.end method

.method saveFragmentViewState(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 2

    .line 2887
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2890
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2891
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_0

    .line 2893
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2895
    :goto_0
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2896
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2897
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 2898
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method saveNonConfig()V
    .locals 9

    .line 2833
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    .line 2834
    :goto_0
    iget-object v6, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 2835
    iget-object v6, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v6, :cond_7

    .line 2837
    iget-boolean v7, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v7, :cond_2

    if-nez v3, :cond_0

    .line 2839
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2841
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2842
    iget-object v7, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v7, :cond_1

    iget v7, v7, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    iput v7, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mTargetIndex:I

    .line 2843
    sget-boolean v7, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retainNonConfig: keeping retained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FragmentManager"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    :cond_2
    iget-object v7, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v7, :cond_3

    .line 2847
    invoke-virtual {v7}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->saveNonConfig()V

    .line 2848
    iget-object v7, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v7, v7, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    goto :goto_2

    .line 2852
    :cond_3
    iget-object v7, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    :goto_2
    if-nez v4, :cond_4

    if-eqz v7, :cond_4

    .line 2856
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v0

    :goto_3
    if-ge v8, v2, :cond_4

    .line 2858
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    .line 2863
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v5, :cond_6

    .line 2865
    iget-object v7, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    if-eqz v7, :cond_6

    .line 2866
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v0

    :goto_4
    if-ge v7, v2, :cond_6

    .line 2868
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    .line 2873
    iget-object v6, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :cond_9
    if-nez v3, :cond_a

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    .line 2879
    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    goto :goto_5

    .line 2881
    :cond_a
    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    invoke-direct {v0, v3, v4, v5}, Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    :goto_5
    return-void
.end method

.method public setBackStackIndex(ILcom/oneplus/support/core/fragment/app/BackStackRecord;)V
    .locals 4

    .line 2163
    monitor-enter p0

    .line 2164
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 2167
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2169
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    if-ge v0, p1, :cond_5

    .line 2173
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2174
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 2175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 2177
    :cond_3
    sget-boolean v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    :cond_4
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2181
    :cond_5
    sget-boolean v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    :cond_6
    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2184
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPrimaryNavigationFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 3403
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    .line 3404
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 3405
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3408
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPrimaryNav:Lcom/oneplus/support/core/fragment/app/Fragment;

    return-void
.end method

.method public showFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 1

    .line 1973
    sget-boolean p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "show: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :cond_0
    iget-boolean p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 1975
    iput-boolean p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    .line 1978
    iget-boolean p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_1
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 2

    .line 1875
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1877
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1878
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 1880
    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->performPendingDeferredStart(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    .line 1006
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 1008
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 1010
    invoke-static {v1, v0}, Lcom/oneplus/support/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 1012
    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-static {p0, v0}, Lcom/oneplus/support/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_0
    const-string p0, "}}"

    .line 1014
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
