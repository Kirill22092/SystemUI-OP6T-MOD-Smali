.class public Lcom/android/systemui/qs/AutoAddTracker$Builder;
.super Ljava/lang/Object;
.source "AutoAddTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/AutoAddTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/qs/AutoAddTracker;
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/AutoAddTracker;

    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker$Builder;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/systemui/qs/AutoAddTracker$Builder;->mUserId:I

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/AutoAddTracker;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public setUserId(I)Lcom/android/systemui/qs/AutoAddTracker$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/AutoAddTracker$Builder;->mUserId:I

    return-object p0
.end method
