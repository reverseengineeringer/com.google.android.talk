.class abstract Ldxu;
.super Lbyp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ldmt;",
        "S:",
        "Ldqf;",
        ">",
        "Lbyp",
        "<TR;TS;>;"
    }
.end annotation


# instance fields
.field public final d:I

.field private final e:Landroid/content/Context;

.field private final f:Ldxv;

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILdxv;I)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lbyp;-><init>()V

    .line 125
    iput-object p1, p0, Ldxu;->e:Landroid/content/Context;

    .line 126
    iput p2, p0, Ldxu;->d:I

    .line 127
    iput-object p3, p0, Ldxu;->f:Ldxv;

    .line 128
    iput p4, p0, Ldxu;->g:I

    .line 129
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Ldxu;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Ldxu;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Leau;)V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1}, Lbyp;->a(Leau;)V

    .line 134
    iget-object v0, p0, Ldxu;->f:Ldxv;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Ldxu;->f:Ldxv;

    invoke-interface {v0}, Ldxv;->a()V

    .line 137
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0, p1}, Lbyp;->a(Ljava/lang/Exception;)V

    .line 142
    iget-object v0, p0, Ldxu;->f:Ldxv;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Ldxu;->f:Ldxv;

    invoke-interface {v0}, Ldxv;->b()V

    .line 145
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
