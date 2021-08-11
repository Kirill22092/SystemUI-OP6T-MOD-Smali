.class public final Landroidx/animation/ObjectAnimator;
.super Landroidx/animation/ValueAnimator;
.source "ObjectAnimator.java"


# instance fields
.field private mAutoCancel:Z

.field private mProperty:Landroid/util/Property;

.field private mPropertyName:Ljava/lang/String;

.field private mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/animation/ObjectAnimator;->mAutoCancel:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroidx/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/animation/ObjectAnimator;->mAutoCancel:Z

    invoke-virtual {p0, p1}, Landroidx/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method private hasSameTargetAndProperties(Landroidx/animation/Animator;)Z
    .locals 5

    instance-of v0, p1, Landroidx/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroidx/animation/ValueAnimator;->getValues()[Landroidx/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Landroidx/animation/ValueAnimator;->mValues:[Landroidx/animation/PropertyValuesHolder;

    array-length p1, p1

    array-length v2, v0

    if-ne p1, v2, :cond_3

    move p1, v1

    :goto_0
    iget-object v2, p0, Landroidx/animation/ValueAnimator;->mValues:[Landroidx/animation/PropertyValuesHolder;

    array-length v3, v2

    if-ge p1, v3, :cond_2

    aget-object v2, v2, p1

    aget-object v3, v0, p1

    invoke-virtual {v2}, Landroidx/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroidx/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroidx/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/animation/ObjectAnimator;
    .locals 1

    new-instance v0, Landroidx/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroidx/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroidx/animation/ObjectAnimator;->setFloatValues([F)V

    return-object v0
.end method


# virtual methods
.method animateValue(F)V
    .locals 3

    invoke-virtual {p0}, Landroidx/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/animation/ValueAnimator;->cancel()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/animation/ValueAnimator;->animateValue(F)V

    iget-object p1, p0, Landroidx/animation/ValueAnimator;->mValues:[Landroidx/animation/PropertyValuesHolder;

    array-length p1, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Landroidx/animation/ValueAnimator;->mValues:[Landroidx/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroidx/animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Landroidx/animation/Animator;
    .locals 0

    invoke-virtual {p0}, Landroidx/animation/ObjectAnimator;->clone()Landroidx/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public clone()Landroidx/animation/ObjectAnimator;
    .locals 0

    invoke-super {p0}, Landroidx/animation/ValueAnimator;->clone()Landroidx/animation/ValueAnimator;

    move-result-object p0

    check-cast p0, Landroidx/animation/ObjectAnimator;

    return-object p0
.end method

.method public bridge synthetic clone()Landroidx/animation/ValueAnimator;
    .locals 0

    invoke-virtual {p0}, Landroidx/animation/ObjectAnimator;->clone()Landroidx/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/animation/ObjectAnimator;->clone()Landroidx/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public getNameForTrace()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/animation/ValueAnimator;->mAnimTraceName:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Landroidx/animation/ValueAnimator;->mValues:[Landroidx/animation/PropertyValuesHolder;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/animation/ValueAnimator;->mValues:[Landroidx/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    if-nez v0, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/animation/ValueAnimator;->mValues:[Landroidx/animation/PropertyValuesHolder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method initAnimation()V
    .locals 4

    iget-boolean v0, p0, Landroidx/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/animation/ValueAnimator;->mValues:[Landroidx/animation/PropertyValuesHolder;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroidx/animation/ValueAnimator;->mValues:[Landroidx/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Landroidx/animation/PropertyValuesHolder;->setupSetterAndGetter(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/animation/ValueAnimator;->initAnimation()V

    :cond_1
    return-void
.end method

.method isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/animation/ValueAnimator;->mInitialized:Z

    return p0
.end method

.method public bridge synthetic setDuration(J)Landroidx/animation/Animator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/animation/ObjectAnimator;->setDuration(J)Landroidx/animation/ObjectAnimator;

    return-object p0
.end method

.method public setDuration(J)Landroidx/animation/ObjectAnimator;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/animation/ValueAnimator;->setDuration(J)Landroidx/animation/ValueAnimator;

    return-object p0
.end method

.method public bridge synthetic setDuration(J)Landroidx/animation/ValueAnimator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/animation/ObjectAnimator;->setDuration(J)Landroidx/animation/ObjectAnimator;

    return-object p0
.end method

.method public varargs setFloatValues([F)V
    .locals 3

    iget-object v0, p0, Landroidx/animation/ValueAnimator;->mValues:[Landroidx/animation/PropertyValuesHolder;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    new-array v2, v2, [Landroidx/animation/PropertyValuesHolder;

    invoke-static {v0, p1}, Landroidx/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroidx/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v2}, Landroidx/animation/ValueAnimator;->setValues([Landroidx/animation/PropertyValuesHolder;)V

    goto :goto_1

    :cond_2
    new-array v0, v2, [Landroidx/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroidx/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroidx/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroidx/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroidx/animation/ValueAnimator;->setValues([Landroidx/animation/PropertyValuesHolder;)V

    :goto_1
    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroidx/animation/ValueAnimator;->mValues:[Landroidx/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1}, Landroidx/animation/PropertyValuesHolder;->setPropertyName(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Landroidx/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    iput-boolean v1, p0, Landroidx/animation/ValueAnimator;->mInitialized:Z

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Landroidx/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/animation/ValueAnimator;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroidx/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/animation/ValueAnimator;->mInitialized:Z

    :cond_2
    return-void
.end method

.method shouldAutoCancel(Landroidx/animation/AnimationHandler$AnimationFrameCallback;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/animation/ObjectAnimator;

    iget-boolean v1, p1, Landroidx/animation/ObjectAnimator;->mAutoCancel:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroidx/animation/ObjectAnimator;->hasSameTargetAndProperties(Landroidx/animation/Animator;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public start()V
    .locals 1

    invoke-static {}, Landroidx/animation/AnimationHandler;->getInstance()Landroidx/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/animation/AnimationHandler;->autoCancelBasedOn(Landroidx/animation/ObjectAnimator;)V

    invoke-super {p0}, Landroidx/animation/ValueAnimator;->start()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/animation/ValueAnimator;->mValues:[Landroidx/animation/PropertyValuesHolder;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/animation/ValueAnimator;->mValues:[Landroidx/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/animation/ValueAnimator;->mValues:[Landroidx/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
