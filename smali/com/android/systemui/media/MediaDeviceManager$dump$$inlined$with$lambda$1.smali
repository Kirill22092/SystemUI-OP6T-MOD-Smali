.class final Lcom/android/systemui/media/MediaDeviceManager$dump$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDeviceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/String;",
        "Lcom/android/systemui/media/MediaDeviceManager$Token;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $args$inlined:[Ljava/lang/String;

.field final synthetic $fd$inlined:Ljava/io/FileDescriptor;

.field final synthetic $pw$inlined:Ljava/io/PrintWriter;

.field final synthetic $this_with:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;Lcom/android/systemui/media/MediaDeviceManager;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$$inlined$with$lambda$1;->$this_with:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$$inlined$with$lambda$1;->$fd$inlined:Ljava/io/FileDescriptor;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$$inlined$with$lambda$1;->$pw$inlined:Ljava/io/PrintWriter;

    iput-object p5, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$$inlined$with$lambda$1;->$args$inlined:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/systemui/media/MediaDeviceManager$Token;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/MediaDeviceManager$dump$$inlined$with$lambda$1;->accept(Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceManager$Token;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceManager$Token;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/MediaDeviceManager$Token;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$$inlined$with$lambda$1;->$this_with:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$$inlined$with$lambda$1;->$fd$inlined:Ljava/io/FileDescriptor;

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$$inlined$with$lambda$1;->$pw$inlined:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$$inlined$with$lambda$1;->$args$inlined:[Ljava/lang/String;

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/systemui/media/MediaDeviceManager$Token;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method
