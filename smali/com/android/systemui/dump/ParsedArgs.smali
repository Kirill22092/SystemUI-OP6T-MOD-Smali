.class final Lcom/android/systemui/dump/ParsedArgs;
.super Ljava/lang/Object;
.source "DumpHandler.kt"


# instance fields
.field private command:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dumpPriority:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private listOnly:Z

.field private final nonFlagArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rawArgs:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tailLength:I


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rawArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonFlagArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dump/ParsedArgs;->rawArgs:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/dump/ParsedArgs;->nonFlagArgs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCommand()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/dump/ParsedArgs;->command:Ljava/lang/String;

    return-object p0
.end method

.method public final getDumpPriority()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/dump/ParsedArgs;->dumpPriority:Ljava/lang/String;

    return-object p0
.end method

.method public final getListOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/dump/ParsedArgs;->listOnly:Z

    return p0
.end method

.method public final getNonFlagArgs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/dump/ParsedArgs;->nonFlagArgs:Ljava/util/List;

    return-object p0
.end method

.method public final getRawArgs()[Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/dump/ParsedArgs;->rawArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public final getTailLength()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/dump/ParsedArgs;->tailLength:I

    return p0
.end method

.method public final setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/systemui/dump/ParsedArgs;->command:Ljava/lang/String;

    return-void
.end method

.method public final setDumpPriority(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/systemui/dump/ParsedArgs;->dumpPriority:Ljava/lang/String;

    return-void
.end method

.method public final setListOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/dump/ParsedArgs;->listOnly:Z

    return-void
.end method

.method public final setTailLength(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/dump/ParsedArgs;->tailLength:I

    return-void
.end method
