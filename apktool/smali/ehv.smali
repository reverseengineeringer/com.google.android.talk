.class final Lehv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lehx;

.field final synthetic b:Leht;


# direct methods
.method constructor <init>(Leht;Lehx;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lehv;->b:Leht;

    iput-object p2, p0, Lehv;->a:Lehx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lehv;->b:Leht;

    iget-object v1, p0, Lehv;->a:Lehx;

    invoke-virtual {v0, v1}, Leht;->b(Lehx;)V

    .line 161
    return-void
.end method
