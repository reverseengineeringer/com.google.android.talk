.class final Lahy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lauw;

.field final synthetic b:Lahw;


# direct methods
.method constructor <init>(Lahw;Lauw;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lahy;->b:Lahw;

    iput-object p2, p0, Lahy;->a:Lauw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lahy;->b:Lahw;

    iget-object v1, p0, Lahy;->a:Lauw;

    invoke-virtual {v0, v1}, Lahw;->a(Lauw;)V

    .line 411
    return-void
.end method
