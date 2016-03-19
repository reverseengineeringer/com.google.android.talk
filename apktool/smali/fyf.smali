.class final Lfyf;
.super Lfir;


# instance fields
.field final synthetic a:Lcom/google/android/gms/feedback/FeedbackOptions;


# direct methods
.method constructor <init>(Lfic;Lcom/google/android/gms/feedback/FeedbackOptions;)V
    .locals 1

    iput-object p2, p0, Lfyf;->a:Lcom/google/android/gms/feedback/FeedbackOptions;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfir;-><init>(Lfic;I)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lfia;)V
    .locals 1

    .prologue
    .line 0
    check-cast p1, Lgcm;

    .line 1000
    iget-object v0, p0, Lfyf;->a:Lcom/google/android/gms/feedback/FeedbackOptions;

    invoke-virtual {p1, v0}, Lgcm;->b(Lcom/google/android/gms/feedback/FeedbackOptions;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lfyf;->a(Lfim;)V

    .line 0
    return-void
.end method
