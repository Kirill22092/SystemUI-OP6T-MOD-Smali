.class public Lcom/oneplus/phone/GesturePointContainer;
.super Ljava/lang/Object;
.source "GesturePointContainer.java"


# instance fields
.field private mPoint:Landroid/graphics/PointF;

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSide:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;IIIII)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/oneplus/phone/GesturePointContainer;->mPoint:Landroid/graphics/PointF;

    .line 15
    iput p2, p0, Lcom/oneplus/phone/GesturePointContainer;->mState:I

    .line 16
    iput p3, p0, Lcom/oneplus/phone/GesturePointContainer;->mSide:I

    .line 17
    iput p4, p0, Lcom/oneplus/phone/GesturePointContainer;->mRotation:I

    .line 18
    iput p5, p0, Lcom/oneplus/phone/GesturePointContainer;->mScreenHeight:I

    .line 19
    iput p6, p0, Lcom/oneplus/phone/GesturePointContainer;->mScreenWidth:I

    return-void
.end method


# virtual methods
.method public getPoint()Landroid/graphics/PointF;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oneplus/phone/GesturePointContainer;->mPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getRotation()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/oneplus/phone/GesturePointContainer;->mRotation:I

    return p0
.end method

.method public getState()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/oneplus/phone/GesturePointContainer;->mState:I

    return p0
.end method
