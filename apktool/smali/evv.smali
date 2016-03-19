.class final Levv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Levu;


# direct methods
.method constructor <init>(Levu;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Levv;->a:Levu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Levv;->a:Levu;

    .line 1021
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Levu;->a(Z)V

    .line 30
    return-void
.end method
