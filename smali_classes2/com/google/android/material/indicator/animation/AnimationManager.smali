.class public Lcom/google/android/material/indicator/animation/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# instance fields
.field private animationController:Lcom/google/android/material/indicator/animation/controller/AnimationController;


# direct methods
.method public constructor <init>(Lcom/google/android/material/indicator/draw/data/Indicator;Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/material/indicator/animation/controller/AnimationController;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/indicator/animation/controller/AnimationController;-><init>(Lcom/google/android/material/indicator/draw/data/Indicator;Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/google/android/material/indicator/animation/AnimationManager;->animationController:Lcom/google/android/material/indicator/animation/controller/AnimationController;

    return-void
.end method


# virtual methods
.method public basic()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/indicator/animation/AnimationManager;->animationController:Lcom/google/android/material/indicator/animation/controller/AnimationController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/indicator/animation/controller/AnimationController;->end()V

    iget-object p0, p0, Lcom/google/android/material/indicator/animation/AnimationManager;->animationController:Lcom/google/android/material/indicator/animation/controller/AnimationController;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/animation/controller/AnimationController;->basic()V

    :cond_0
    return-void
.end method

.method public end()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/indicator/animation/AnimationManager;->animationController:Lcom/google/android/material/indicator/animation/controller/AnimationController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/indicator/animation/controller/AnimationController;->end()V

    :cond_0
    return-void
.end method

.method public interactive(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/indicator/animation/AnimationManager;->animationController:Lcom/google/android/material/indicator/animation/controller/AnimationController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/animation/controller/AnimationController;->interactive(F)V

    :cond_0
    return-void
.end method
