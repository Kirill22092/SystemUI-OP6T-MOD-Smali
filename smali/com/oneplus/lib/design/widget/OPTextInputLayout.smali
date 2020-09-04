.class public Lcom/oneplus/lib/design/widget/OPTextInputLayout;
.super Landroid/widget/LinearLayout;
.source "OPTextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/OPTextInputLayout$TextInputAccessibilityDelegate;,
        Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field final mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

.field mCounterEnabled:Z

.field private mCounterMaxLength:I

.field private mCounterOverflowTextAppearance:I

.field private mCounterOverflowed:Z

.field private mCounterTextAppearance:I

.field private mCounterView:Landroid/widget/TextView;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field mEditText:Landroid/widget/EditText;

.field private mError:Ljava/lang/CharSequence;

.field private mErrorEnabled:Z

.field private mErrorShown:Z

.field private mErrorTextAppearance:I

.field mErrorView:Landroid/widget/TextView;

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mHasPasswordToggleTintList:Z

.field private mHasPasswordToggleTintMode:Z

.field private mHasReconstructedEditTextBackground:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mHintEnabled:Z

.field private mHintExpanded:Z

.field private mInDrawableStateChanged:Z

.field private mIndicatorArea:Landroid/widget/LinearLayout;

.field private mIndicatorsAdded:I

.field private final mInputFrame:Landroid/widget/FrameLayout;

.field private mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

.field private mOriginalHint:Ljava/lang/CharSequence;

.field private mPasswordToggleContentDesc:Ljava/lang/CharSequence;

.field private mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

.field private mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private mPasswordToggleEnabled:Z

.field private mPasswordToggleTintList:Landroid/content/res/ColorStateList;

.field private mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

.field private mPasswordToggledVisible:Z

.field private mRestoringSavedState:Z

.field private mTmpPaint:Landroid/graphics/Paint;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 190
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 170
    new-instance v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 194
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAddStatesFromChildren(Z)V

    .line 196
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    .line 197
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 198
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    sget-object v2, Lcom/oneplus/lib/design/widget/OPAnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 201
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 202
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    const v2, 0x800033

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 204
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout:[I

    sget v3, Lcom/oneplus/commonctrl/R$style;->Widget_Design_OPTextInputLayout:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 206
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opHintEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    .line 207
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_android_hint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 208
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opHintAnimationEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    .line 211
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_android_textColorHint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 212
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_android_textColorHint:I

    .line 213
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 216
    :cond_0
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opHintTextAppearance:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_1

    .line 220
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opHintTextAppearance:I

    .line 221
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 220
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHintTextAppearance(I)V

    .line 224
    :cond_1
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opErrorTextAppearance:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorTextAppearance:I

    .line 225
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opErrorEnabled:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 227
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opCounterEnabled:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 229
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opCounterMaxLength:I

    const/4 v3, -0x1

    .line 230
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 229
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setCounterMaxLength(I)V

    .line 231
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opCounterTextAppearance:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterTextAppearance:I

    .line 233
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opCounterOverflowTextAppearance:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowTextAppearance:I

    .line 236
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleEnabled:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    .line 238
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleDrawable:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 239
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleContentDescription:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    .line 241
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleTint:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    .line 243
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleTint:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    .line 246
    :cond_2
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleTintMode:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    .line 248
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleTintMode:I

    .line 249
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x0

    .line 248
    invoke-static {v1, v2}, Lcom/oneplus/lib/design/widget/OPViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 252
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setErrorEnabled(Z)V

    .line 255
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setCounterEnabled(Z)V

    .line 256
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->applyPasswordToggleTint()V

    .line 258
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_4

    .line 261
    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 265
    :cond_4
    new-instance p1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$TextInputAccessibilityDelegate;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$TextInputAccessibilityDelegate;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mRestoringSavedState:Z

    return p0
.end method

.method private addIndicator(Landroid/widget/TextView;I)V
    .locals 4

    .line 575
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 576
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    .line 577
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 578
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 582
    new-instance v0, Lcom/oneplus/support/core/widget/Space;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oneplus/support/core/widget/Space;-><init>(Landroid/content/Context;)V

    .line 583
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 584
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->adjustIndicatorPadding()V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 592
    iget p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    return-void
.end method

.method private adjustIndicatorPadding()V
    .locals 4

    .line 597
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 598
    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result p0

    const/4 v3, 0x0

    .line 597
    invoke-static {v0, v1, v3, v2, p0}, Lcom/oneplus/support/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method private applyPasswordToggleTint()V
    .locals 2

    .line 1354
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    if-eqz v0, :cond_3

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1358
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    if-eqz v0, :cond_1

    .line 1359
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1361
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    if-eqz v0, :cond_2

    .line 1362
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1365
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-eqz v0, :cond_3

    .line 1366
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_3

    .line 1367
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 4

    .line 1518
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private collapseHint(Z)V
    .locals 1

    .line 1397
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 1400
    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_1

    .line 1401
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1403
    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    :goto_0
    const/4 p1, 0x0

    .line 1405
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    return-void
.end method

.method private ensureBackgroundDrawableStateWorkaround()V
    .locals 3

    .line 934
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    return-void

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 944
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasReconstructedEditTextBackground:Z

    if-nez v1, :cond_3

    .line 949
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 951
    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v2, :cond_2

    .line 954
    check-cast v0, Landroid/graphics/drawable/DrawableContainer;

    .line 956
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 955
    invoke-static {v0, v2}, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasReconstructedEditTextBackground:Z

    .line 959
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasReconstructedEditTextBackground:Z

    if-nez v0, :cond_3

    .line 964
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 965
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasReconstructedEditTextBackground:Z

    :cond_3
    return-void
.end method

.method private expandHint(Z)V
    .locals 1

    .line 1441
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1444
    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_1

    .line 1445
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1447
    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    :goto_0
    const/4 p1, 0x1

    .line 1449
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    return-void
.end method

.method private hasPasswordTransformation()Z
    .locals 0

    .line 1345
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    .line 1346
    invoke-virtual {p0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static recursiveSetEnabled(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 861
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 862
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 863
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 864
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 865
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeIndicator(Landroid/widget/TextView;)V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 604
    iget p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    if-nez p1, :cond_0

    .line 605
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_6

    .line 341
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/OPTextInputEditText;

    if-nez v0, :cond_0

    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a OPTextInputEditText. Please switch to using that class instead."

    .line 342
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 347
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 348
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->hasPasswordTransformation()Z

    move-result p1

    if-nez p1, :cond_1

    .line 353
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 355
    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 357
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getGravity()I

    move-result p1

    .line 358
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    and-int/lit8 v1, p1, -0x71

    or-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 360
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 363
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$1;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 380
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_2

    .line 381
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 385
    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 387
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    .line 388
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 390
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 393
    :cond_3
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 394
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    .line 397
    :cond_4
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    .line 398
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->adjustIndicatorPadding()V

    .line 401
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updatePasswordToggleView()V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 404
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(ZZ)V

    return-void

    .line 338
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "We already have an EditText, can only have one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setError(Ljava/lang/CharSequence;ZZ)V
    .locals 7

    .line 710
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mError:Ljava/lang/CharSequence;

    .line 712
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 713
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 718
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setErrorEnabled(Z)V

    .line 721
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    .line 724
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 726
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v0, :cond_5

    .line 727
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p3, :cond_2

    .line 731
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p1, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0x1e

    .line 732
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p3

    sget-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

    .line 733
    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 734
    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 735
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    .line 739
    iget-object p3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getAlpha()F

    move-result p3

    cmpl-float p3, p3, p1

    if-nez p3, :cond_3

    .line 741
    iget-object p3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 743
    :cond_3
    iget-object p3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 744
    invoke-virtual {p3, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 745
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p3, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 746
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p3, Lcom/oneplus/lib/design/widget/OPTextInputLayout$2;

    invoke-direct {p3, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$2;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    .line 747
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 752
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 755
    :cond_4
    iget-object p3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 758
    :cond_5
    iget-object p3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getVisibility()I

    move-result p3

    if-nez p3, :cond_7

    if-eqz p2, :cond_6

    .line 760
    iget-object p3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 761
    invoke-virtual {p3, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 762
    invoke-virtual {p3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    sget-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 763
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;Ljava/lang/CharSequence;)V

    .line 764
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 770
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 772
    :cond_6
    iget-object p3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 778
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    .line 779
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41700000    # 15.0f
        0x0
    .end array-data
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 489
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private shouldShowPasswordIcon()Z
    .locals 1

    .line 1350
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateEditTextBackground()V
    .locals 2

    .line 900
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 904
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 909
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->ensureBackgroundDrawableStateWorkaround()V

    .line 911
    invoke-static {v0}, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 912
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 915
    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 920
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 928
    :cond_4
    invoke-static {v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 929
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->refreshDrawableState()V

    :goto_0
    return-void
.end method

.method private updateInputLayoutMargins()V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 413
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 415
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 418
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCollapsedTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 419
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 424
    :goto_0
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_2

    .line 425
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 426
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method private updatePasswordToggleView()V
    .locals 7

    .line 1095
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 1100
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->shouldShowPasswordIcon()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 1101
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-nez v0, :cond_1

    .line 1102
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Lcom/oneplus/commonctrl/R$layout;->op_design_text_input_password_icon:I

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    .line 1103
    invoke-virtual {v0, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    .line 1104
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1108
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    new-instance v5, Lcom/oneplus/lib/design/widget/OPTextInputLayout$4;

    invoke-direct {v5, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$4;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1116
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1120
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-static {v5}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 1123
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1124
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-boolean v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setChecked(Z)V

    .line 1128
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 1129
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1131
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0, v4, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1133
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/oneplus/support/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1135
    aget-object v5, v0, v3

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v6, :cond_4

    .line 1136
    aget-object v3, v0, v3

    iput-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    .line 1138
    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v2, v0, v2

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-static {v3, v4, v2, v5, v0}, Lcom/oneplus/support/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1142
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1143
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1144
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result p0

    .line 1142
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    goto :goto_0

    .line 1146
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1147
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1150
    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 1153
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/oneplus/support/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1154
    aget-object v3, v0, v3

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v3, v5, :cond_7

    .line 1155
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v2, v0, v2

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-static {v3, v4, v2, v5, v0}, Lcom/oneplus/support/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 1157
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 270
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 273
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 275
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateInputLayoutMargins()V

    .line 282
    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setEditText(Landroid/widget/EditText;)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method animateToExpansionFraction(F)V
    .locals 4

    .line 1454
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1457
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 1458
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1459
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1460
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1461
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$5;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$5;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1468
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1469
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 329
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    throw p1

    .line 320
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1038
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mRestoringSavedState:Z

    .line 1039
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    .line 1040
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mRestoringSavedState:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1081
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1083
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    .line 1084
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1410
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInDrawableStateChanged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1417
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInDrawableStateChanged:Z

    .line 1419
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1421
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v1

    .line 1425
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    .line 1427
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    .line 1429
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    if-eqz v0, :cond_2

    .line 1430
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v0, v3

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 1434
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1437
    :cond_3
    iput-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInDrawableStateChanged:Z

    return-void
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .line 1052
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mError:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 501
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method final isHintExpanded()Z
    .locals 0

    .line 1474
    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1374
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1376
    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 1377
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 1378
    invoke-static {p0, p1, p2}, Lcom/oneplus/lib/design/widget/OPViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1380
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result p4

    add-int/2addr p1, p4

    .line 1381
    iget p4, p2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    .line 1383
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1384
    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1385
    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    .line 1383
    invoke-virtual {v0, p1, v1, p4, p2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 1389
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p5, p3

    .line 1390
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    .line 1389
    invoke-virtual {p2, p1, v0, p4, p5}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 1392
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1090
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updatePasswordToggleView()V

    .line 1091
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1026
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    if-nez v0, :cond_0

    .line 1027
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1030
    :cond_0
    check-cast p1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    .line 1031
    invoke-virtual {p1}, Lcom/oneplus/support/core/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1032
    iget-object p1, p1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 1033
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1016
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1017
    new-instance v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1018
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    if-eqz v0, :cond_0

    .line 1019
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    :cond_0
    return-object v1
.end method

.method passwordVisibilityToggleRequested()V
    .locals 3

    .line 1325
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    if-eqz v0, :cond_1

    .line 1327
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1329
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->hasPasswordTransformation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x1

    .line 1331
    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    goto :goto_0

    .line 1333
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x0

    .line 1334
    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    .line 1337
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setChecked(Z)V

    .line 1340
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 3

    .line 788
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_2

    .line 790
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    .line 791
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    sget v1, Lcom/oneplus/commonctrl/R$id;->op_textinput_counter:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 792
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 793
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterTextAppearance:I

    invoke-static {v0, v1}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 801
    :catch_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    const v1, 0x10301f1

    invoke-static {v0, v1}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 803
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$color;->op_error_color_material_default:I

    invoke-static {v1, v2}, Lcom/oneplus/support/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 806
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    .line 807
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 808
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    goto :goto_1

    .line 810
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    goto :goto_1

    .line 813
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    const/4 v0, 0x0

    .line 814
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    .line 816
    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    :cond_3
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    .line 839
    iget v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    if-eq v0, p1, :cond_2

    if-lez p1, :cond_0

    .line 841
    iput p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 843
    iput p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    .line 845
    :goto_0
    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    if-eqz p1, :cond_2

    .line 846
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 856
    invoke-static {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 857
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 2

    .line 704
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 704
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setError(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 5

    .line 618
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    if-eq v0, p1, :cond_5

    .line 619
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 624
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 625
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    sget v2, Lcom/oneplus/commonctrl/R$id;->op_textinput_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 626
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 627
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    const/4 v1, 0x1

    .line 631
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorTextAppearance:I

    invoke-static {v2, v3}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 633
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 634
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, -0xff01

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :catch_0
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    .line 648
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const v3, 0x10301f1

    invoke-static {v2, v3}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 650
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$color;->op_error_color_material_default:I

    invoke-static {v3, v4}, Lcom/oneplus/support/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 653
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 656
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 658
    :cond_4
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    .line 659
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    .line 660
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    const/4 v0, 0x0

    .line 661
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 663
    :goto_2
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    :cond_5
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 481
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    .line 482
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    .line 483
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 565
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 567
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 568
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    .line 570
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateInputLayoutMargins()V

    :cond_0
    return-void
.end method

.method updateCounter(I)V
    .locals 7

    .line 880
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    .line 881
    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 882
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iput-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    if-le p1, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 885
    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    .line 886
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eq v0, v1, :cond_3

    .line 887
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 888
    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowTextAppearance:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterTextAppearance:I

    .line 887
    :goto_1
    invoke-static {v4, v1}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 890
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$string;->op_character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 891
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    iget p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    .line 890
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    :goto_2
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eq v0, p1, :cond_4

    .line 894
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    .line 895
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    :cond_4
    return-void
.end method

.method updateLabelState(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 431
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(ZZ)V

    return-void
.end method

.method updateLabelState(ZZ)V
    .locals 6

    .line 435
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    .line 436
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 437
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v3

    const v4, 0x101009c

    invoke-static {v3, v4}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->arrayContains([II)Z

    move-result v3

    .line 438
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v2, v4

    .line 440
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    .line 441
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 444
    iget-boolean v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 445
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 446
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 448
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    .line 449
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    :goto_1
    if-nez v1, :cond_7

    .line 452
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v3, :cond_7

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    .line 459
    iget-boolean p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    if-nez p2, :cond_9

    .line 460
    :cond_6
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->expandHint(Z)V

    goto :goto_3

    :cond_7
    :goto_2
    if-nez p2, :cond_8

    .line 454
    iget-boolean p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    if-eqz p2, :cond_9

    .line 455
    :cond_8
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->collapseHint(Z)V

    :cond_9
    :goto_3
    return-void
.end method
