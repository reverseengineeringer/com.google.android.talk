.class final Lcmh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcme;

.field private final b:Lkhk;


# direct methods
.method constructor <init>(Lcme;Lkhk;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcmh;->a:Lcme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcmh;->b:Lkhk;

    .line 179
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcmh;->a:Lcme;

    iget-object v1, p0, Lcmh;->b:Lkhk;

    invoke-static {v1}, Lclt;->a(Lkhk;)Lclt;

    move-result-object v1

    .line 1029
    iput-object v1, v0, Lcme;->d:Lclt;

    .line 184
    iget-object v0, p0, Lcmh;->a:Lcme;

    .line 2029
    iget-object v0, v0, Lcme;->d:Lclt;

    .line 184
    iget-object v1, p0, Lcmh;->a:Lcme;

    .line 3029
    iget-object v1, v1, Lcme;->a:Lba;

    .line 184
    invoke-virtual {v1}, Lba;->C_()Lbg;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lclt;->a(Lbg;Ljava/lang/String;)V

    .line 185
    return-void
.end method
