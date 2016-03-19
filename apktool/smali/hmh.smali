.class final Lhmh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Llyi;

.field final synthetic c:Lhmg;


# direct methods
.method constructor <init>(Lhmg;Ljava/lang/String;Llyi;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lhmh;->c:Lhmg;

    iput-object p2, p0, Lhmh;->a:Ljava/lang/String;

    iput-object p3, p0, Lhmh;->b:Llyi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lhmh;->c:Lhmg;

    iget-object v0, v0, Lhmg;->a:Lhmf;

    iget-object v1, p0, Lhmh;->a:Ljava/lang/String;

    iget-object v2, p0, Lhmh;->b:Llyi;

    invoke-virtual {v0, v1, v2}, Lhmf;->b(Ljava/lang/String;Llyi;)V

    .line 71
    return-void
.end method
