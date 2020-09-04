.class Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;
.super Ljava/lang/Object;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/fragment/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationInfo"
.end annotation


# instance fields
.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Landroid/view/View;

.field mAnimator:Landroid/animation/Animator;

.field private mEnterTransition:Ljava/lang/Object;

.field mEnterTransitionCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

.field mEnterTransitionPostponed:Z

.field private mExitTransition:Ljava/lang/Object;

.field mExitTransitionCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

.field mIsHideReplaced:Z

.field mNextAnim:I

.field mNextTransition:I

.field mNextTransitionStyle:I

.field private mReenterTransition:Ljava/lang/Object;

.field private mReturnTransition:Ljava/lang/Object;

.field private mSharedElementEnterTransition:Ljava/lang/Object;

.field private mSharedElementReturnTransition:Ljava/lang/Object;

.field mStartEnterTransitionListener:Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;

.field mStateAfterAnimating:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 2849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2872
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    .line 2873
    sget-object v1, Lcom/oneplus/support/core/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    .line 2874
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    .line 2875
    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    .line 2876
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    .line 2877
    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 2881
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    .line 2882
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;
    .locals 0

    .line 2849
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;
    .locals 0

    .line 2849
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;
    .locals 0

    .line 2849
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;
    .locals 0

    .line 2849
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;
    .locals 0

    .line 2849
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;
    .locals 0

    .line 2849
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;
    .locals 0

    .line 2849
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;
    .locals 0

    .line 2849
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    return-object p0
.end method
