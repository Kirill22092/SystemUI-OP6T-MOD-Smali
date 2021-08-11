.class public Lcom/oneplus/aod/bg/OpAodCanvas;
.super Landroid/view/View;
.source "OpAodCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;
    }
.end annotation


# instance fields
.field private mAodMask:Lcom/oneplus/aod/bg/OpAodLowLightMask;

.field private mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

.field private mChecking:Z

.field private mCurrentTime:J

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mHelper:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

.field private mListener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

.field private mLowEnviroment:Z

.field private mObserver:Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;

.field private mPm:Landroid/os/PowerManager;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field private mUserSwitching:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/bg/OpAodCanvas;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/bg/OpAodCanvas;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/oneplus/aod/bg/OpAodCanvas$1;

    invoke-direct {p2, p0}, Lcom/oneplus/aod/bg/OpAodCanvas$1;-><init>(Lcom/oneplus/aod/bg/OpAodCanvas;)V

    iput-object p2, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    new-instance p2, Lcom/oneplus/aod/bg/OpAodCanvas$3;

    invoke-direct {p2, p0}, Lcom/oneplus/aod/bg/OpAodCanvas$3;-><init>(Lcom/oneplus/aod/bg/OpAodCanvas;)V

    iput-object p2, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mListener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

    new-instance p2, Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    invoke-direct {p2, p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHelper:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mLowEnviroment:Z

    const-class p3, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iput-object p3, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    const-class p3, Landroid/os/PowerManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mPm:Landroid/os/PowerManager;

    iput-boolean p2, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mChecking:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/bg/OpAodCanvas;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mLowEnviroment:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/aod/bg/OpAodCanvas;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mLowEnviroment:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/hardware/SensorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/bg/OpAodCanvas;Z)Lcom/oneplus/aod/bg/IBgPaint;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->choosePaint(Z)Lcom/oneplus/aod/bg/IBgPaint;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/aod/bg/OpAodCanvas;Lcom/oneplus/aod/bg/IBgPaint;Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/bg/OpAodCanvas;->setupPaint(Lcom/oneplus/aod/bg/IBgPaint;Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mListener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/utils/OpCanvasAodHelper;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHelper:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oneplus/aod/bg/OpAodCanvas;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mUserSwitching:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/oneplus/aod/bg/OpAodCanvas;Landroid/os/Bundle;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/bg/OpAodCanvas;->onChange(Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/android/systemui/util/sensors/AsyncSensorManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/aod/bg/OpAodCanvas;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mChecking:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mPm:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/bg/OpAodLowLightMask;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mAodMask:Lcom/oneplus/aod/bg/OpAodLowLightMask;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/bg/IBgPaint;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mObserver:Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/bg/OpAodCanvas;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->shouldTurnOnAodGesture()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkEnvironment()V
    .locals 8

    iget-boolean v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mChecking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iget-object v2, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v3, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mChecking:Z

    goto :goto_0

    :cond_0
    const-string p0, "OpAodCanvas"

    const-string v0, "checkEnvironment: already checking..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private choosePaint(Z)Lcom/oneplus/aod/bg/IBgPaint;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p0, Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private clearLowEnvironmentChecking()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mLowEnviroment:Z

    iput-boolean v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mChecking:Z

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method private onChange(Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHelper:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    iget-object v1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mListener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->saveCanvasAodParams(Landroid/os/Bundle;ZLcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;Landroid/os/Handler;)V

    return-void
.end method

.method private setupPaint(Lcom/oneplus/aod/bg/IBgPaint;Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/aod/bg/IBgPaint;->release()V

    :cond_0
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Paint class= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " attached= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpAodCanvas"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    invoke-interface {v0, p0}, Lcom/oneplus/aod/bg/IBgPaint;->setup(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    instance-of v1, v0, Lcom/oneplus/aod/bg/OpSketchPaint;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-virtual {v0, p2}, Lcom/oneplus/aod/bg/OpSketchPaint;->setupContour(Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V

    :cond_2
    iget-object p2, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    iget v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mWidth:I

    iget v1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHeight:I

    invoke-interface {p2, v0, v1}, Lcom/oneplus/aod/bg/IBgPaint;->onSizeChanged(II)V

    :cond_3
    iget-object p2, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mAodMask:Lcom/oneplus/aod/bg/OpAodLowLightMask;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/oneplus/aod/bg/OpAodLowLightMask;->createMask()V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/oneplus/aod/bg/OpAodLowLightMask;->release()V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void
.end method

.method private shouldTurnOnAodGesture()V
    .locals 1

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Lcom/oneplus/aod/OpAodUtils;->shouldTurnOnAodGesture(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public burnInProtect()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mAodMask:Lcom/oneplus/aod/bg/OpAodLowLightMask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/oneplus/aod/bg/IBgPaint;->burnInProtect()V

    :cond_1
    return-void
.end method

.method public disable()V
    .locals 2

    const-string v0, "OpAodCanvas"

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHelper:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->resetPrevClockStyle()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/aod/bg/OpAodCanvas;->onChange(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public genAodDisappearAnimation()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oneplus/aod/bg/IBgPaint;->genAodDisappearAnimation()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mCurrentTime:J

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oneplus/aod/bg/IBgPaint;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oneplus/aod/bg/IBgPaint;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oneplus/aod/bg/IBgPaint;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mWidth:I

    iput p2, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHeight:I

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/oneplus/aod/bg/IBgPaint;->onSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->getMoveDelay()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3b

    iget-wide v3, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mCurrentTime:J

    sub-long v3, v0, v3

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->burnInProtect()V

    iput-wide v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mCurrentTime:J

    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitchComplete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpAodCanvas"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mUserSwitching:Z

    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHelper:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mListener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->loadFromCache(Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;Landroid/os/Handler;)V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpAodCanvas"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mUserSwitching:Z

    return-void
.end method

.method public onUserUnlocked()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/bg/OpAodCanvas$2;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/bg/OpAodCanvas$2;-><init>(Lcom/oneplus/aod/bg/OpAodCanvas;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mAodMask:Lcom/oneplus/aod/bg/OpAodLowLightMask;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mLowEnviroment:Z

    if-eqz p0, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public recover()V
    .locals 4

    const-string v0, "OpAodCanvas"

    const-string v1, "recover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mCurrentTime:J

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/aod/bg/IBgPaint;->recover()V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->clearLowEnvironmentChecking()V

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "OpAodCanvas"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mObserver:Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;

    invoke-virtual {v0}, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->unregister()V

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/aod/bg/IBgPaint;->release()V

    iput-object v1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mAodMask:Lcom/oneplus/aod/bg/OpAodLowLightMask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/aod/bg/OpAodLowLightMask;->release()V

    iput-object v1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mAodMask:Lcom/oneplus/aod/bg/OpAodLowLightMask;

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "OpAodCanvas"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/oneplus/aod/bg/IBgPaint;->reset()V

    goto :goto_0

    :cond_0
    const-string v1, "reset: bg paint is null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mObserver:Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;

    invoke-virtual {v0}, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->register()V

    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->clearLowEnvironmentChecking()V

    return-void
.end method

.method public setAodMask(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/oneplus/aod/bg/OpAodLowLightMask;

    iput-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mAodMask:Lcom/oneplus/aod/bg/OpAodLowLightMask;

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;-><init>(Lcom/oneplus/aod/bg/OpAodCanvas;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mObserver:Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;

    invoke-virtual {v0}, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->register()V

    return-void
.end method

.method public stopDozing()V
    .locals 2

    const-string v0, "OpAodCanvas"

    const-string v1, "stopDozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->clearLowEnvironmentChecking()V

    return-void
.end method

.method public userActivityInAlwaysOn(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userActivityInAlwaysOn: reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpAodCanvas"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mCurrentTime:J

    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->checkEnvironment()V

    return-void
.end method
