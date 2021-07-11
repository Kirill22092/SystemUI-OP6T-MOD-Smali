.class final synthetic Lcom/android/systemui/controls/management/ControlHolder$accessibilityDelegate$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "ControlAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlHolder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlHolder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "stateDescription"

    return-object p0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 0

    const-class p0, Lcom/android/systemui/controls/management/ControlHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "stateDescription(Z)Ljava/lang/CharSequence;"

    return-object p0
.end method

.method public final invoke(Z)Ljava/lang/CharSequence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/controls/management/ControlHolder;

    .line 204
    invoke-static {p0, p1}, Lcom/android/systemui/controls/management/ControlHolder;->access$stateDescription(Lcom/android/systemui/controls/management/ControlHolder;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 185
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/ControlHolder$accessibilityDelegate$1;->invoke(Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
