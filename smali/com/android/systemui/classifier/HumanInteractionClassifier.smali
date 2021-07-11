.class public Lcom/android/systemui/classifier/HumanInteractionClassifier;
.super Lcom/android/systemui/classifier/Classifier;
.source "HumanInteractionClassifier.java"


# static fields
.field private static sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;


# instance fields
.field private final mBufferedEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentType:I

.field private final mDpi:F

.field private mEnableClassifier:Z

.field private final mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

.field private final mHandler:Landroid/os/Handler;

.field private final mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/classifier/Classifier;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    const/4 v1, 0x7

    .line 52
    iput v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    .line 54
    new-instance v2, Lcom/android/systemui/classifier/HumanInteractionClassifier$1;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/classifier/HumanInteractionClassifier$1;-><init>(Lcom/android/systemui/classifier/HumanInteractionClassifier;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 69
    iget v2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    iput v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    .line 70
    new-instance p1, Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {p1, v2}, Lcom/android/systemui/classifier/ClassifierData;-><init>(F)V

    iput-object p1, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    .line 71
    new-instance p1, Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-direct {p1}, Lcom/android/systemui/classifier/HistoryEvaluator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    const/16 p1, 0x9

    new-array p1, p1, [Lcom/android/systemui/classifier/StrokeClassifier;

    .line 73
    new-instance v2, Lcom/android/systemui/classifier/AnglesClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/AnglesClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v2, p1, v0

    new-instance v2, Lcom/android/systemui/classifier/SpeedClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/SpeedClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v3, 0x1

    aput-object v2, p1, v3

    new-instance v2, Lcom/android/systemui/classifier/DurationCountClassifier;

    iget-object v4, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v4}, Lcom/android/systemui/classifier/DurationCountClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v4, 0x2

    aput-object v2, p1, v4

    new-instance v2, Lcom/android/systemui/classifier/EndPointRatioClassifier;

    iget-object v5, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v5}, Lcom/android/systemui/classifier/EndPointRatioClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v5, 0x3

    aput-object v2, p1, v5

    new-instance v2, Lcom/android/systemui/classifier/EndPointLengthClassifier;

    iget-object v5, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v5}, Lcom/android/systemui/classifier/EndPointLengthClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v5, 0x4

    aput-object v2, p1, v5

    new-instance v2, Lcom/android/systemui/classifier/AccelerationClassifier;

    iget-object v5, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v5}, Lcom/android/systemui/classifier/AccelerationClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v5, 0x5

    aput-object v2, p1, v5

    new-instance v2, Lcom/android/systemui/classifier/SpeedAnglesClassifier;

    iget-object v5, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v5}, Lcom/android/systemui/classifier/SpeedAnglesClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v5, 0x6

    aput-object v2, p1, v5

    new-instance v2, Lcom/android/systemui/classifier/LengthCountClassifier;

    iget-object v5, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v5}, Lcom/android/systemui/classifier/LengthCountClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v2, p1, v1

    new-instance v1, Lcom/android/systemui/classifier/DirectionClassifier;

    iget-object v2, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v1, v2}, Lcom/android/systemui/classifier/DirectionClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/16 v2, 0x8

    aput-object v1, p1, v2

    iput-object p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    new-array p1, v4, [Lcom/android/systemui/classifier/GestureClassifier;

    .line 85
    new-instance v1, Lcom/android/systemui/classifier/PointerCountClassifier;

    iget-object v2, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v1, v2}, Lcom/android/systemui/classifier/PointerCountClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v1, p1, v0

    new-instance v1, Lcom/android/systemui/classifier/ProximityClassifier;

    iget-object v2, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v1, v2}, Lcom/android/systemui/classifier/ProximityClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v1, p1, v3

    iput-object p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    .line 90
    iget-object p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "HIC_enable"

    .line 91
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    .line 90
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->updateConfiguration()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/classifier/HumanInteractionClassifier;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->updateConfiguration()V

    return-void
.end method

.method private addTouchEvent(Landroid/view/MotionEvent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 157
    iget-object v2, v0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v2, v1}, Lcom/android/systemui/classifier/ClassifierData;->update(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 162
    invoke-virtual {v6, v1}, Lcom/android/systemui/classifier/Classifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 165
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 166
    invoke-virtual {v6, v1}, Lcom/android/systemui/classifier/Classifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 169
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v2}, Lcom/android/systemui/classifier/ClassifierData;->getEndingStrokes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    const-string v5, "="

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v7, " "

    const-string v8, " addTouchEvent"

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-ge v3, v2, :cond_8

    .line 171
    iget-object v11, v0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v11}, Lcom/android/systemui/classifier/ClassifierData;->getEndingStrokes()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/classifier/Stroke;

    .line 173
    sget-boolean v12, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v12, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "stroke"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    :cond_3
    iget-object v12, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    array-length v13, v12

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_6

    aget-object v15, v12, v14

    .line 175
    iget v4, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    invoke-virtual {v15, v4, v11}, Lcom/android/systemui/classifier/StrokeClassifier;->getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F

    move-result v4

    .line 176
    sget-boolean v16, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v16, :cond_5

    .line 177
    invoke-virtual {v15}, Lcom/android/systemui/classifier/Classifier;->getTag()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v2

    .line 178
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    cmpl-float v17, v4, v6

    if-ltz v17, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    :goto_4
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    move/from16 v16, v2

    :goto_5
    add-float/2addr v10, v4

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    goto :goto_3

    :cond_6
    move/from16 v16, v2

    .line 183
    sget-boolean v2, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v2, :cond_7

    .line 184
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_7
    iget-object v2, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {v2, v10}, Lcom/android/systemui/classifier/HistoryEvaluator;->addStroke(F)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    goto :goto_2

    .line 189
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    .line 192
    :cond_9
    sget-boolean v2, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v2, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v2, "gesture"

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    :cond_a
    iget-object v2, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_d

    aget-object v11, v2, v4

    .line 194
    iget v12, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    invoke-virtual {v11, v12}, Lcom/android/systemui/classifier/GestureClassifier;->getFalseTouchEvaluation(I)F

    move-result v12

    .line 195
    sget-boolean v13, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v13, :cond_c

    .line 196
    invoke-virtual {v11}, Lcom/android/systemui/classifier/Classifier;->getTag()Ljava/lang/String;

    move-result-object v11

    .line 197
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    cmpl-float v14, v12, v6

    if-ltz v14, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    :goto_7
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_c
    add-float/2addr v10, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 201
    :cond_d
    sget-boolean v2, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v2, :cond_e

    .line 202
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_e
    iget-object v2, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {v2, v10}, Lcom/android/systemui/classifier/HistoryEvaluator;->addGesture(F)V

    const/4 v2, 0x7

    .line 205
    invoke-virtual {v0, v2}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 208
    :cond_f
    iget-object v0, v0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/ClassifierData;->cleanUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/HumanInteractionClassifier;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    .line 102
    :cond_0
    sget-object p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    return-object p0
.end method

.method private updateConfiguration()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_lockscreenAntiFalsingClassifierEnabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HIC_enable"

    .line 109
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "HIC"

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 237
    iget-boolean p0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    return p0
.end method

.method public isFalseTouch()Z
    .locals 3

    .line 223
    iget-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 224
    iget-object p0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/HistoryEvaluator;->getEvaluation()F

    move-result p0

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    .line 226
    :cond_0
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eval="

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " result="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isFalseTouch"

    .line 227
    invoke-static {v0, p0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 214
    invoke-virtual {v4, p1}, Lcom/android/systemui/classifier/Classifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p0, v2

    .line 218
    invoke-virtual {v1, p1}, Lcom/android/systemui/classifier/Classifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 136
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Lcom/android/systemui/classifier/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/classifier/Point;-><init>(FF)V

    .line 139
    :goto_1
    new-instance v1, Lcom/android/systemui/classifier/Point;

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    .line 140
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/classifier/Point;-><init>(FF)V

    .line 139
    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    .line 142
    iget-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    goto :goto_1

    .line 145
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 147
    iget-object p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 148
    iget-object p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    .line 149
    iget-object p0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    :cond_4
    :goto_2
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    return-void
.end method
