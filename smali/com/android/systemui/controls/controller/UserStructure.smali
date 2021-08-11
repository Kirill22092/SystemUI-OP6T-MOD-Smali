.class public final Lcom/android/systemui/controls/controller/UserStructure;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"


# instance fields
.field private final auxiliaryFile:Ljava/io/File;

.field private final file:Ljava/io/File;

.field private final userContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/UserHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/UserStructure;->userContext:Landroid/content/Context;

    const-string/jumbo p2, "userContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "controls_favorites.xml"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/UserStructure;->file:Ljava/io/File;

    iget-object p1, p0, Lcom/android/systemui/controls/controller/UserStructure;->userContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string p2, "aux_controls_favorites.xml"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/UserStructure;->auxiliaryFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final getAuxiliaryFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/UserStructure;->auxiliaryFile:Ljava/io/File;

    return-object p0
.end method

.method public final getFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/UserStructure;->file:Ljava/io/File;

    return-object p0
.end method

.method public final getUserContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/UserStructure;->userContext:Landroid/content/Context;

    return-object p0
.end method
