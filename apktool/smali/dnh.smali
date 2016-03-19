.class public abstract Ldnh;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ldpf;-><init>()V

    return-void
.end method


# virtual methods
.method protected g()Lefh;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lefh;->d:Lefh;

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 61
    const-string v1, "babel_oz_apiary_trace_token"

    sget-object v2, Leea;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
