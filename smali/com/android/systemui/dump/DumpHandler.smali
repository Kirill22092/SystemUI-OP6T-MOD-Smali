.class public final Lcom/android/systemui/dump/DumpHandler;
.super Ljava/lang/Object;
.source "DumpHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDumpHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DumpHandler.kt\ncom/android/systemui/dump/DumpHandler\n*L\n1#1,312:1\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field private final logBufferEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/dump/LogBufferEulogizer;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/dump/LogBufferEulogizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logBufferEulogizer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dump/DumpHandler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p3, p0, Lcom/android/systemui/dump/DumpHandler;->logBufferEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    return-void
.end method

.method private final dumpBuffers(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V
    .locals 1

    .line 141
    invoke-virtual {p2}, Lcom/android/systemui/dump/ParsedArgs;->getListOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/dump/DumpManager;->listBuffers(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p2}, Lcom/android/systemui/dump/ParsedArgs;->getTailLength()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/dump/DumpManager;->dumpBuffers(Ljava/io/PrintWriter;I)V

    :goto_0
    return-void
.end method

.method private final dumpConfig(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "SystemUiServiceComponents configuration:"

    .line 173
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "vendor component: "

    .line 174
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/dump/DumpHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->config_systemUIVendorServiceComponent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    sget v0, Lcom/android/systemui/R$array;->config_systemUIServiceComponents:I

    const-string v1, "global"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/dump/DumpHandler;->dumpServiceList(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 177
    sget v0, Lcom/android/systemui/R$array;->config_systemUIServiceComponentsPerUser:I

    const-string v1, "per-user"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/dump/DumpHandler;->dumpServiceList(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    return-void
.end method

.method private final dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p3}, Lcom/android/systemui/dump/ParsedArgs;->getRawArgs()[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/dump/DumpManager;->dumpDumpables(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p2}, Lcom/android/systemui/dump/DumpHandler;->dumpConfig(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private final dumpDumpables(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V
    .locals 1

    .line 133
    invoke-virtual {p3}, Lcom/android/systemui/dump/ParsedArgs;->getListOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0, p2}, Lcom/android/systemui/dump/DumpManager;->listDumpables(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p3}, Lcom/android/systemui/dump/ParsedArgs;->getRawArgs()[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/dump/DumpManager;->dumpDumpables(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final dumpHelp(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "Let <invocation> be:"

    .line 199
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "$ adb shell dumpsys activity service com.android.systemui/.SystemUIService"

    .line 200
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p0, "Most common usage:"

    .line 203
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "$ <invocation> <targets>"

    .line 204
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "$ <invocation> NotifLog"

    .line 205
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "$ <invocation> StatusBar FalsingManager BootCompleteCacheImpl"

    .line 206
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "etc."

    .line 207
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p0, "Special commands:"

    .line 210
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "$ <invocation> dumpables"

    .line 211
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "$ <invocation> buffers"

    .line 212
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "$ <invocation> bugreport-critical"

    .line 213
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "$ <invocation> bugreport-normal"

    .line 214
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p0, "Targets can be listed:"

    .line 217
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "$ <invocation> --list"

    .line 218
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "$ <invocation> dumpables --list"

    .line 219
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "$ <invocation> buffers --list"

    .line 220
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p0, "Show only the most recent N lines of buffers"

    .line 223
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "$ <invocation> NotifLog --tail 30"

    .line 224
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private final dumpNormal(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p2}, Lcom/android/systemui/dump/ParsedArgs;->getTailLength()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/dump/DumpManager;->dumpBuffers(Ljava/io/PrintWriter;I)V

    .line 129
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->logBufferEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/dump/LogBufferEulogizer;->readEulogyIfPresent(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private final dumpParameterized(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V
    .locals 2

    .line 111
    invoke-virtual {p3}, Lcom/android/systemui/dump/ParsedArgs;->getCommand()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "bugreport-critical"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto :goto_1

    :sswitch_1
    const-string v1, "buffers"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dumpBuffers(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto :goto_1

    :sswitch_2
    const-string v1, "help"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/systemui/dump/DumpHandler;->dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_1

    :sswitch_3
    const-string v1, "bugreport-normal"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dumpNormal(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto :goto_1

    :sswitch_4
    const-string v1, "dumpables"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dumpDumpables(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto :goto_1

    :sswitch_5
    const-string v1, "config"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/systemui/dump/DumpHandler;->dumpConfig(Ljava/io/PrintWriter;)V

    goto :goto_1

    .line 118
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/systemui/dump/ParsedArgs;->getNonFlagArgs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dumpTargets(Ljava/util/List;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50c07cbe -> :sswitch_5
        -0x50b00b1b -> :sswitch_4
        -0x3e4f1254 -> :sswitch_3
        0x30cf41 -> :sswitch_2
        0xd96f433 -> :sswitch_1
        0x323c8b24 -> :sswitch_0
    .end sparse-switch
.end method

.method private final dumpServiceList(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 2

    .line 181
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 182
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ": "

    .line 183
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, "N/A"

    .line 185
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 188
    :cond_0
    array-length p3, p0

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, " services"

    .line 189
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 190
    array-length v0, p0

    :goto_0
    if-ge p3, v0, :cond_1

    const-string v1, "  "

    .line 191
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    aget-object v1, p0, p3

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final dumpTargets(Ljava/util/List;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Lcom/android/systemui/dump/ParsedArgs;",
            ")V"
        }
    .end annotation

    .line 154
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p4}, Lcom/android/systemui/dump/ParsedArgs;->getRawArgs()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/android/systemui/dump/ParsedArgs;->getTailLength()I

    move-result v6

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/dump/DumpManager;->dumpTarget(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p4}, Lcom/android/systemui/dump/ParsedArgs;->getListOnly()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Dumpables:"

    .line 160
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p1, p3}, Lcom/android/systemui/dump/DumpManager;->listDumpables(Ljava/io/PrintWriter;)V

    .line 162
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    const-string p1, "Buffers:"

    .line 164
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0, p3}, Lcom/android/systemui/dump/DumpManager;->listBuffers(Ljava/io/PrintWriter;)V

    goto :goto_1

    :cond_1
    const-string p0, "Nothing to dump :("

    .line 167
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final parseArgs([Ljava/lang/String;)Lcom/android/systemui/dump/ParsedArgs;
    .locals 8

    .line 228
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/android/systemui/dump/ParsedArgs;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/dump/ParsedArgs;-><init>([Ljava/lang/String;Ljava/util/List;)V

    .line 231
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 232
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 233
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "-"

    .line 234
    invoke-static {v2, v7, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 236
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v3, "--tail"

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v4, "--list"

    .line 251
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :sswitch_2
    const-string v3, "--help"

    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :sswitch_3
    const-string v3, "--dump-priority"

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    sget-object v2, Lcom/android/systemui/dump/DumpHandler$parseArgs$1;->INSTANCE:Lcom/android/systemui/dump/DumpHandler$parseArgs$1;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/systemui/dump/DumpHandler;->readArgument(Ljava/util/Iterator;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/dump/ParsedArgs;->setDumpPriority(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v3, "-t"

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    :goto_1
    sget-object v3, Lcom/android/systemui/dump/DumpHandler$parseArgs$2;->INSTANCE:Lcom/android/systemui/dump/DumpHandler$parseArgs$2;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/systemui/dump/DumpHandler;->readArgument(Ljava/util/Iterator;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/dump/ParsedArgs;->setTailLength(I)V

    goto :goto_0

    :sswitch_5
    const-string v4, "-l"

    .line 251
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/systemui/dump/ParsedArgs;->setListOnly(Z)V

    goto :goto_0

    :sswitch_6
    const-string v3, "-h"

    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_3
    const-string v2, "help"

    .line 255
    invoke-virtual {v1, v2}, Lcom/android/systemui/dump/ParsedArgs;->setCommand(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :cond_1
    :goto_4
    new-instance p0, Lcom/android/systemui/dump/ArgParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown flag: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/dump/ArgParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 264
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/dump/ParsedArgs;->getCommand()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/systemui/dump/DumpHandlerKt;->access$getCOMMANDS$p()[Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 265
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/systemui/dump/ParsedArgs;->setCommand(Ljava/lang/String;)V

    :cond_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x5db -> :sswitch_6
        0x5df -> :sswitch_5
        0x5e7 -> :sswitch_4
        0x3efed3bd -> :sswitch_3
        0x4f7504e1 -> :sswitch_2
        0x4f76e63e -> :sswitch_1
        0x4f7a69f0 -> :sswitch_0
    .end sparse-switch
.end method

.method private final readArgument(Ljava/util/Iterator;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 276
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 279
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 282
    :try_start_0
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    .line 284
    :catch_0
    new-instance p1, Lcom/android/systemui/dump/ArgParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid argument \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' for flag "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/systemui/dump/ArgParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 277
    :cond_0
    new-instance p0, Lcom/android/systemui/dump/ArgParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing argument for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/dump/ArgParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DumpManager#dump()"

    .line 89
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 93
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/systemui/dump/DumpHandler;->parseArgs([Ljava/lang/String;)Lcom/android/systemui/dump/ParsedArgs;

    move-result-object p3
    :try_end_0
    .catch Lcom/android/systemui/dump/ArgParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    invoke-virtual {p3}, Lcom/android/systemui/dump/ParsedArgs;->getDumpPriority()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x76664f19    # -3.699977E-33f

    if-eq v3, v4, :cond_2

    const v4, -0x5cfe9861

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "CRITICAL"

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto :goto_1

    :cond_2
    const-string v3, "NORMAL"

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dumpNormal(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto :goto_1

    .line 102
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dumpParameterized(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    .line 105
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Dump took "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
