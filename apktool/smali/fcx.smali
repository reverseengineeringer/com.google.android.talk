.class public final Lfcx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lbng;


# direct methods
.method public constructor <init>(Lbng;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10052
    iput-object p1, p0, Lfcx;->c:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10053
    iput-boolean v0, p0, Lfcx;->a:Z

    .line 10054
    iput v0, p0, Lfcx;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 7058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfcx;->a:Z

    .line 7059
    iget v0, p0, Lfcx;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfcx;->b:I

    .line 7061
    iget-object v0, p0, Lfcx;->c:Lbng;

    invoke-virtual {v0}, Lbng;->getActivity()Lba;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7075
    :cond_0
    :goto_0
    return-void

    .line 7068
    :cond_1
    iget-object v0, p0, Lfcx;->c:Lbng;

    invoke-virtual {v0}, Lbng;->getLoaderManager()Lcj;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcj;->b(I)Lfe;

    move-result-object v0

    .line 7069
    if-eqz v0, :cond_0

    .line 7285
    sget-boolean v1, Lbng;->a:Z

    .line 7073
    invoke-virtual {v0}, Lfe;->v()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 8079
    iget v0, p0, Lfcx;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfcx;->b:I

    .line 8080
    iget v0, p0, Lfcx;->b:I

    if-lez v0, :cond_1

    .line 8098
    :cond_0
    :goto_0
    return-void

    .line 8084
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfcx;->a:Z

    .line 8086
    iget-object v0, p0, Lfcx;->c:Lbng;

    invoke-virtual {v0}, Lbng;->getActivity()Lba;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8091
    iget-object v0, p0, Lfcx;->c:Lbng;

    invoke-virtual {v0}, Lbng;->getLoaderManager()Lcj;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcj;->b(I)Lfe;

    move-result-object v0

    .line 8092
    if-eqz v0, :cond_0

    .line 8285
    sget-boolean v1, Lbng;->a:Z

    .line 8096
    invoke-virtual {v0}, Lfe;->s()V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 9102
    iget-boolean v0, p0, Lfcx;->a:Z

    return v0
.end method
