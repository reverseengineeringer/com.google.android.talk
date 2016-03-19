.class public abstract Lihc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lihv;


# static fields
.field private static final a:Liph;

.field private static final b:Liph;

.field private static final c:Limw;

.field private static final d:Liph;

.field private static final e:Liph;

.field private static final f:Liph;

.field private static final g:Liph;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Liph;

    const-string v1, "debug.plus.apiary_token"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Liph;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lihc;->a:Liph;

    .line 25
    new-instance v0, Liph;

    const-string v1, "debug.plus.backend.url"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Liph;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lihc;->b:Liph;

    .line 31
    new-instance v0, Limw;

    const-string v1, "debug.plus.tracing_enabled"

    invoke-direct {v0, v1}, Limw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lihc;->c:Limw;

    .line 38
    new-instance v0, Liph;

    const-string v1, "debug.plus.tracing_token"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Liph;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lihc;->d:Liph;

    .line 44
    new-instance v0, Liph;

    const-string v1, "debug.plus.tracing_path"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Liph;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lihc;->e:Liph;

    .line 52
    new-instance v0, Liph;

    const-string v1, "debug.plus.tracing_level"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Liph;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lihc;->f:Liph;

    .line 58
    new-instance v0, Liph;

    const-string v1, "debug.plus.experiment_override"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Liph;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lihc;->g:Liph;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lihc;->a:Liph;

    invoke-virtual {v0}, Liph;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lihc;->g:Liph;

    invoke-virtual {v0}, Liph;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
