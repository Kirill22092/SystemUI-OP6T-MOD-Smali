.class final synthetic Lcom/android/systemui/util/animation/PhysicsAnimator$Companion$instanceConstructor$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "PhysicsAnimator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/animation/PhysicsAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/util/animation/PhysicsAnimator<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/util/animation/PhysicsAnimator$Companion$instanceConstructor$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$Companion$instanceConstructor$1;

    invoke-direct {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator$Companion$instanceConstructor$1;-><init>()V

    sput-object v0, Lcom/android/systemui/util/animation/PhysicsAnimator$Companion$instanceConstructor$1;->INSTANCE:Lcom/android/systemui/util/animation/PhysicsAnimator$Companion$instanceConstructor$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "<init>"

    return-object p0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 0

    const-class p0, Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 0

    const-string p0, "<init>(Ljava/lang/Object;)V"

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "p1"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/systemui/util/animation/PhysicsAnimator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;-><init>(Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator$Companion$instanceConstructor$1;->invoke(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method
