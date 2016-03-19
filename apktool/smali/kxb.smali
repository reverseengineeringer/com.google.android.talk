.class final Lkxb;
.super Lkwz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkwz",
        "<TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lkxa;


# direct methods
.method constructor <init>(Lkxa;I)V
    .locals 1

    .prologue
    .line 305
    iput-object p1, p0, Lkxb;->b:Lkxa;

    const/4 v0, 0x2

    iput v0, p0, Lkxb;->a:I

    invoke-direct {p0}, Lkwz;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkwt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lkwt;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lkxb;->b:Lkxa;

    .line 309
    invoke-virtual {v0}, Lkxa;->a()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lkwx;

    iget v2, p0, Lkxb;->a:I

    invoke-direct {v1, v2}, Lkwx;-><init>(I)V

    .line 308
    invoke-static {v0, v1}, Laal;->a(Ljava/util/Map;Lkog;)Lkwt;

    move-result-object v0

    return-object v0
.end method
