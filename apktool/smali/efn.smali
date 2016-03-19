.class public final Lefn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Legs;


# static fields
.field private static final b:Z

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lezi;->l:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lefn;->b:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lefn;->a:I

    .line 24
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lefn;->a:I

    return v0
.end method

.method public a(ILknq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 33
    iget v1, p0, Lefn;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 34
    sget-boolean v1, Lefn;->b:Z

    if-eqz v1, :cond_0

    .line 35
    const-string v1, "[ActiveClientStateNotification] Clearing active client time stamp for account: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    :cond_0
    :goto_0
    invoke-static {v0}, Leck;->a(Lbfd;)Leck;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Leck;->h()V

    .line 44
    :cond_1
    return-void

    .line 39
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
