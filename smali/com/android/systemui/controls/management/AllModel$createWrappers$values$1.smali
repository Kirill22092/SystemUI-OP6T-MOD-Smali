.class final Lcom/android/systemui/controls/management/AllModel$createWrappers$values$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AllModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/AllModel;->createWrappers(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/controls/ControlStatus;",
        "Lcom/android/systemui/controls/management/ControlStatusWrapper;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/management/AllModel$createWrappers$values$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/management/AllModel$createWrappers$values$1;

    invoke-direct {v0}, Lcom/android/systemui/controls/management/AllModel$createWrappers$values$1;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/management/AllModel$createWrappers$values$1;->INSTANCE:Lcom/android/systemui/controls/management/AllModel$createWrappers$values$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/systemui/controls/ControlStatus;)Lcom/android/systemui/controls/management/ControlStatusWrapper;
    .locals 0
    .param p1    # Lcom/android/systemui/controls/ControlStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance p0, Lcom/android/systemui/controls/management/ControlStatusWrapper;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/ControlStatusWrapper;-><init>(Lcom/android/systemui/controls/ControlStatus;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/AllModel$createWrappers$values$1;->invoke(Lcom/android/systemui/controls/ControlStatus;)Lcom/android/systemui/controls/management/ControlStatusWrapper;

    move-result-object p0

    return-object p0
.end method
