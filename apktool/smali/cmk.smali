.class final Lcmk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcmu;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcmi;


# direct methods
.method constructor <init>(Lcmi;Lcmu;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcmk;->c:Lcmi;

    iput-object p2, p0, Lcmk;->a:Lcmu;

    iput-object p3, p0, Lcmk;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcmk;->a:Lcmu;

    new-instance v1, Lcmt;

    invoke-direct {v1}, Lcmt;-><init>()V

    iget-object v2, p0, Lcmk;->b:Ljava/lang/String;

    .line 188
    invoke-virtual {v1, v2}, Lcmt;->a(Ljava/lang/String;)Lcmt;

    move-result-object v1

    invoke-virtual {v1}, Lcmt;->a()Lcmt;

    move-result-object v1

    invoke-virtual {v1}, Lcmt;->b()Lcms;

    move-result-object v1

    .line 187
    invoke-interface {v0, v1}, Lcmu;->a(Lcms;)V

    .line 189
    return-void
.end method
