.class final Lbuj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lfcd;

.field public b:Leys;

.field final synthetic c:Lbuh;


# direct methods
.method constructor <init>(Lbuh;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    iput-object p1, p0, Lbuj;->c:Lbuh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v0, p0, Lbuj;->a:Lfcd;

    .line 87
    iput-object v0, p0, Lbuj;->b:Leys;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lbuj;->b:Leys;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lbuj;->b:Leys;

    invoke-virtual {v0}, Leys;->b()V

    .line 92
    iput-object v1, p0, Lbuj;->b:Leys;

    .line 94
    :cond_0
    iget-object v0, p0, Lbuj;->a:Lfcd;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lbuj;->a:Lfcd;

    invoke-virtual {v0}, Lfcd;->c()V

    .line 96
    iput-object v1, p0, Lbuj;->a:Lfcd;

    .line 98
    :cond_1
    return-void
.end method
